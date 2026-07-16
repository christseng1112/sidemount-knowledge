# check-links.ps1 — 側掛知識流健檢（wikilink / 中英對照 / 外部連結）
# 用法：
#   .\check-links.ps1              完整健檢（含外部 URL，需數分鐘）
#   .\check-links.ps1 -SkipUrls    只跑結構檢查（wikilink + 對照表），數秒完成
# 建議：編輯筆記後跑 -SkipUrls；每季或潛旅前跑完整版。
param(
    [string]$VaultPath = "C:\Users\chris.tseng\OneDrive - Bora Group\桌面\側掛知識流",
    [switch]$SkipUrls
)

$ErrorActionPreference = 'Stop'
$folders = @("00_MOCs","10_Concepts","20_Equipment","30_Skills","40_Gas_Management","50_Safety","60_Advanced","70_Resources")
$issues = 0

# 收集所有筆記：bare 檔名（中文式 [[Name]]）與相對路徑（英文式 [[en/Folder/Name]]）
$bareNames = New-Object System.Collections.Generic.HashSet[string]
$relPaths  = New-Object System.Collections.Generic.HashSet[string]
$allFiles  = @()
foreach ($d in $folders) {
    foreach ($base in @($d, "en\$d")) {
        $dir = Join-Path $VaultPath $base
        if (-not (Test-Path $dir)) { continue }
        Get-ChildItem -Path $dir -Filter *.md | ForEach-Object {
            $allFiles += $_
            $stem = [IO.Path]::GetFileNameWithoutExtension($_.Name)
            [void]$bareNames.Add($stem)
            [void]$relPaths.Add(($base -replace '\\','/') + '/' + $stem)
        }
    }
}
Write-Host "掃描 $($allFiles.Count) 篇筆記`n"

# ---------- 1. wikilink 解析檢查 ----------
Write-Host "[1/3] wikilink 解析..."
$wikiRe = [regex]'\[\[([^\]\|#]+)'
$totalLinks = 0
$broken = @()
foreach ($f in $allFiles) {
    $content = Get-Content -Raw -Encoding UTF8 $f.FullName
    foreach ($m in $wikiRe.Matches($content)) {
        $target = $m.Groups[1].Value.Trim()
        $totalLinks++
        if ((-not $bareNames.Contains($target)) -and (-not $relPaths.Contains($target))) {
            $broken += [pscustomobject]@{ File = $f.Name; Target = $target }
        }
    }
}
if ($broken.Count -eq 0) {
    Write-Host "  OK 全部 $totalLinks 條 wikilink 皆可解析" -ForegroundColor Green
} else {
    Write-Host "  X  $totalLinks 條中有 $($broken.Count) 條斷鏈：" -ForegroundColor Red
    $broken | Group-Object Target | Sort-Object Count -Descending | ForEach-Object {
        Write-Host ("     [{0}x] {1}" -f $_.Count, $_.Name)
    }
    $issues += $broken.Count
}

# ---------- 2. 中英對照表一致性 ----------
Write-Host "`n[2/3] 中英對照表 (title-map.tsv)..."
$mapFile = Join-Path $PSScriptRoot 'title-map.tsv'
if (-not (Test-Path $mapFile)) {
    Write-Host "  !  找不到 title-map.tsv，略過" -ForegroundColor Yellow
} else {
    $mapped = New-Object System.Collections.Generic.HashSet[string]
    $mapErr = 0
    foreach ($line in (Get-Content -Encoding UTF8 $mapFile)) {
        if ($line -match '^\s*#' -or $line.Trim() -eq '') { continue }
        $p = $line -split "`t"
        if ($p.Count -lt 3) { continue }
        $d, $zh, $en = $p[0], $p[1], $p[2]
        [void]$mapped.Add($zh)
        if (-not (Test-Path (Join-Path $VaultPath "$d\$zh.md")))    { Write-Host "  X  對照表列出但中文檔不存在: $d/$zh" -ForegroundColor Red; $mapErr++ }
        if (-not (Test-Path (Join-Path $VaultPath "en\$d\$en.md"))) { Write-Host "  X  對照表列出但英文檔不存在: en/$d/$en" -ForegroundColor Red; $mapErr++ }
    }
    # 反向：有筆記漏列
    foreach ($d in ($folders | Where-Object { $_ -ne '00_MOCs' })) {
        $dir = Join-Path $VaultPath $d
        if (-not (Test-Path $dir)) { continue }
        Get-ChildItem -Path $dir -Filter *.md | ForEach-Object {
            $stem = [IO.Path]::GetFileNameWithoutExtension($_.Name)
            if (-not $mapped.Contains($stem)) { Write-Host "  X  新筆記未列入對照表: $d/$stem" -ForegroundColor Red; $script:mapErr++ }
        }
    }
    if ($mapErr -eq 0) { Write-Host "  OK 中英對照完整（$($mapped.Count) 對）" -ForegroundColor Green }
    $issues += $mapErr
}

# ---------- 3. 外部連結健康 ----------
if ($SkipUrls) {
    Write-Host "`n[3/3] 外部連結檢查已略過 (-SkipUrls)"
} else {
    Write-Host "`n[3/3] 外部連結 (需數分鐘)..."
    # 已知反爬蟲網域：403 屬預期行為（筆記內已加「以搜尋索引確認」註記）
    $whitelist403 = @('tdisdi.com','divegearexpress.com','dtmag.com','scubadiving.com',
                      'diverightinscuba.com','divernet.com','uhms.org','indepthmag.com',
                      'scuba.com','padi.com','scubaforge.com')
    $urlRe = [regex]'(?:連結|Link)\]\((https?://(?:[^()\s]|\([^()]*\))+)\)'
    $links = @{}
    foreach ($f in $allFiles) {
        $content = Get-Content -Raw -Encoding UTF8 $f.FullName
        foreach ($m in $urlRe.Matches($content)) {
            $u = $m.Groups[1].Value
            if (-not $links.ContainsKey($u)) { $links[$u] = New-Object System.Collections.ArrayList }
            [void]$links[$u].Add($f.Name)
        }
    }
    Write-Host "  共 $($links.Count) 條唯一外部連結"
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $fail = @()
    $i = 0
    foreach ($url in @($links.Keys)) {
        $i++
        Write-Progress -Activity "Checking URLs" -Status "$i / $($links.Count)" -PercentComplete (100 * $i / $links.Count)
        $status = $null
        try {
            $resp = Invoke-WebRequest -Uri $url -Method Head -TimeoutSec 15 -UseBasicParsing -ErrorAction Stop
            $status = [int]$resp.StatusCode
        } catch {
            try {
                $resp = Invoke-WebRequest -Uri $url -Method Get -TimeoutSec 20 -UseBasicParsing -ErrorAction Stop
                $status = [int]$resp.StatusCode
            } catch {
                if ($_.Exception.Response) { $status = [int]$_.Exception.Response.StatusCode } else { $status = 'ERR' }
            }
        }
        $domain = ([uri]$url).Host -replace '^www\.',''
        $wl = ($status -eq 403) -and (($whitelist403 | Where-Object { $domain -eq $_ -or $domain.EndsWith(".$_") }).Count -gt 0)
        if ($status -ne 200 -and -not $wl) {
            $fail += [pscustomobject]@{ Status = $status; Url = $url; Files = (($links[$url] | Select-Object -Unique) -join '; ') }
        }
    }
    Write-Progress -Activity "Checking URLs" -Completed
    if ($fail.Count -eq 0) {
        Write-Host "  OK 全部連結正常（403 白名單除外）" -ForegroundColor Green
    } else {
        Write-Host "  !  異常 $($fail.Count) 條（503/429/ERR 多為暫時性，重跑確認）：" -ForegroundColor Yellow
        $fail | Sort-Object Status | Format-Table -AutoSize -Wrap
        $csv = Join-Path $PSScriptRoot 'link-check-failures.csv'
        $fail | Export-Csv -Path $csv -NoTypeInformation -Encoding UTF8
        Write-Host "  已輸出 $csv"
    }
}

Write-Host "`n================================"
if ($issues -eq 0) { Write-Host "結構檢查通過（wikilink + 中英對照）" -ForegroundColor Green }
else { Write-Host "結構問題 $issues 項待修" -ForegroundColor Red }
