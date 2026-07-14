# check-links.ps1 — 側掛知識流引用連結健檢
# 用法：在 sidemount-site 目錄執行 .\check-links.ps1
# 掃描 vault 全部「連結](URL)」引用，回報非 200 的連結；已知反爬 403 網域列入白名單不報。
param(
    [string]$VaultPath = "C:\Users\chris.tseng\OneDrive - Bora Group\桌面\側掛知識流"
)

# 已知反爬蟲網域：403 屬預期行為（筆記內已加「以搜尋索引確認」註記）
$whitelist403 = @(
    'tdisdi.com', 'divegearexpress.com', 'dtmag.com', 'scubadiving.com',
    'diverightinscuba.com', 'divernet.com', 'uhms.org', 'indepthmag.com'
)

$regex = [regex]'連結\]\((https?://(?:[^()\s]|\([^()]*\))+)\)'
$links = @{}
Get-ChildItem -Path $VaultPath -Recurse -Filter *.md | ForEach-Object {
    $name = $_.Name
    $content = Get-Content -Raw -Encoding UTF8 $_.FullName
    foreach ($m in $regex.Matches($content)) {
        $url = $m.Groups[1].Value
        if (-not $links.ContainsKey($url)) { $links[$url] = New-Object System.Collections.ArrayList }
        [void]$links[$url].Add($name)
    }
}
Write-Host "共 $($links.Count) 條唯一連結，開始檢查..."

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$fail = @()
$i = 0
foreach ($url in @($links.Keys)) {
    $i++
    Write-Progress -Activity "Checking links" -Status "$i / $($links.Count)  $url" -PercentComplete (100 * $i / $links.Count)
    $status = $null
    try {
        $resp = Invoke-WebRequest -Uri $url -Method Head -TimeoutSec 15 -UseBasicParsing -ErrorAction Stop
        $status = [int]$resp.StatusCode
    } catch {
        try {
            # 許多站擋 HEAD，改試 GET
            $resp = Invoke-WebRequest -Uri $url -Method Get -TimeoutSec 20 -UseBasicParsing -ErrorAction Stop
            $status = [int]$resp.StatusCode
        } catch {
            if ($_.Exception.Response) { $status = [int]$_.Exception.Response.StatusCode } else { $status = 'ERR' }
        }
    }
    $domain = ([uri]$url).Host -replace '^www\.', ''
    $whitelisted = ($status -eq 403) -and (($whitelist403 | Where-Object { $domain -eq $_ -or $domain.EndsWith(".$_") }).Count -gt 0)
    if ($status -ne 200 -and -not $whitelisted) {
        $fail += [pscustomobject]@{
            Status = $status
            Url    = $url
            Files  = (($links[$url] | Select-Object -Unique) -join '; ')
        }
    }
}
Write-Progress -Activity "Checking links" -Completed

if ($fail.Count -eq 0) {
    Write-Host "✅ 全部 $($links.Count) 條連結正常（403 白名單網域除外）。"
} else {
    Write-Host "⚠️ 檢查 $($links.Count) 條，異常 $($fail.Count) 條："
    $fail | Sort-Object Status | Format-Table -AutoSize -Wrap
    $csv = Join-Path $PSScriptRoot 'link-check-failures.csv'
    $fail | Export-Csv -Path $csv -NoTypeInformation -Encoding UTF8
    Write-Host "已輸出 $csv"
}
