# check-links.ps1 — 側掛知識流健檢（wikilink / 中英對照 / 引用完整性 / 外部連結）
# 用法：
#   .\check-links.ps1              完整健檢（含外部 URL，需數分鐘）
#   .\check-links.ps1 -SkipUrls    只跑結構檢查（wikilink + 對照表 + 引用），數秒完成
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
    foreach ($base in @($d, "en/$d")) {
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
Write-Host "[1/4] wikilink 解析..."
$wikiRe = [regex]'\[\[([^\]\|#]+)'
$totalLinks = 0
$broken = @()
foreach ($f in $allFiles) {
    $content = Get-Content -Raw -Encoding UTF8 $f.FullName
    foreach ($m in $wikiRe.Matches($content)) {
        $target = $m.Groups[1].Value.Trim().TrimEnd('\')
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
Write-Host "`n[2/4] 中英對照表 (title-map.tsv)..."
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
        if (-not (Test-Path (Join-Path $VaultPath "$d/$zh.md")))    { Write-Host "  X  對照表列出但中文檔不存在: $d/$zh" -ForegroundColor Red; $mapErr++ }
        if (-not (Test-Path (Join-Path $VaultPath "en/$d/$en.md"))) { Write-Host "  X  對照表列出但英文檔不存在: en/$d/$en" -ForegroundColor Red; $mapErr++ }
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

# ---------- 3. 引用完整性 ----------
# 存在理由：2026-07-13 引用文章級化壓縮了參考清單，內文 [n] 標記未同步重編，
# 造成 20 篇（中英各 10）的 [10]–[23] 指向不存在的條目，潛伏近兩個月未被發現——
# 因為前兩項檢查只看 wikilink 與檔案對應，看不到引用編號。此段補上該缺口。
Write-Host "`n[3/4] 引用完整性..."
# 注意：中文標題為「## 📚 參考文獻與引用來源」，行尾不是「參考文獻」，故不可加 $ 錨點
$refHdrRe  = [regex]'(?m)^##\s+.*(?:參考文獻|References)'
$refItemRe = [regex]'(?m)^\s*(\d+)\.\s+\*\*'
$citeRe    = [regex]'\[(\d{1,2})\]'
$fenceRe   = [regex]'(?s)```.*?```'
$scriptRe  = [regex]'(?is)<script\b.*?</script>'

$refCounts = @{}          # "資料夾/檔名" 或 "en/資料夾/檔名" -> 參考條目數
$citeErr = 0
foreach ($f in $allFiles) {
    $content = Get-Content -Raw -Encoding UTF8 $f.FullName
    $h = $refHdrRe.Match($content)
    if (-not $h.Success) { continue }   # MOC、術語表、日誌範本無參考段落，略過

    # 內文剔除程式碼區塊與 <script>，避免陣列索引誤判為引用標記
    $body = $scriptRe.Replace($fenceRe.Replace($content.Substring(0, $h.Index), ''), '')
    $refs = $content.Substring($h.Index)

    $nums = @{}
    foreach ($m in $refItemRe.Matches($refs)) { $nums[[int]$m.Groups[1].Value] = $true }
    $maxRef = 0
    if ($nums.Count -gt 0) { $maxRef = ($nums.Keys | Measure-Object -Maximum).Maximum }

    $dangling = @{}
    foreach ($m in $citeRe.Matches($body)) {
        $n = [int]$m.Groups[1].Value
        if (-not $nums.ContainsKey($n)) { $dangling[$n] = $true }
    }
    if ($dangling.Count -gt 0) {
        $list = ($dangling.Keys | Sort-Object) -join ','
        Write-Host "  X  $($f.Name)：內文引用 [$list] 不在參考清單（清單 1-$maxRef）" -ForegroundColor Red
        $citeErr += $dangling.Count
    }

    $parent = $f.Directory.Name
    $grand  = if ($f.Directory.Parent) { $f.Directory.Parent.Name } else { '' }
    $key = if ($grand -eq 'en') { "en/$parent/$($f.BaseName)" } else { "$parent/$($f.BaseName)" }
    $refCounts[$key] = $nums.Count
}

# 中英參考清單條目數須一致：英文版曾刪掉社群/影音來源卻未重編號，
# 使英文內文的 [n] 指到錯誤來源（2026-09-04 修復 3 篇）。
if (Test-Path $mapFile) {
    foreach ($line in (Get-Content -Encoding UTF8 $mapFile)) {
        if ($line -match '^\s*#' -or $line.Trim() -eq '') { continue }
        $p = $line -split "`t"
        if ($p.Count -lt 3) { continue }
        $d, $zh, $en = $p[0], $p[1], $p[2]
        $kz = "$d/$zh"; $ke = "en/$d/$en"
        if ($refCounts.ContainsKey($kz) -and $refCounts.ContainsKey($ke) -and
            $refCounts[$kz] -ne $refCounts[$ke]) {
            Write-Host ("  X  中英參考數不符（zh {0} / en {1}）: {2}/{3}" -f $refCounts[$kz], $refCounts[$ke], $d, $zh) -ForegroundColor Red
            $citeErr++
        }
    }
}

if ($citeErr -eq 0) {
    Write-Host "  OK 引用編號全數對應、中英參考清單等長（$($refCounts.Count) 篇有參考段落）" -ForegroundColor Green
}
$issues += $citeErr

# ---------- 4. 外部連結健康 ----------
if ($SkipUrls) {
    Write-Host "`n[4/4] 外部連結檢查已略過 (-SkipUrls)"
} else {
    Write-Host "`n[4/4] 外部連結 (需數分鐘)..."
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
if ($issues -eq 0) {
    Write-Host "結構檢查通過（wikilink + 中英對照 + 引用完整性）" -ForegroundColor Green
    exit 0
} else {
    Write-Host "結構問題 $issues 項待修" -ForegroundColor Red
    exit 1   # 非零退出讓 CI 擋下部署
}
