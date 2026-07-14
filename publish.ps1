# publish.ps1 — 把 OneDrive vault 的最新筆記同步到網站 repo 並發布
# 用法：在 sidemount-site 目錄執行  .\publish.ps1 ["commit message"]

param([string]$Message = "Update notes $(Get-Date -Format 'yyyy-MM-dd HH:mm')")

$vault = "C:\Users\chris.tseng\OneDrive - Bora Group\桌面\側掛知識流"
$repo  = $PSScriptRoot
$dirs  = '00_MOCs','10_Concepts','20_Equipment','30_Skills','40_Gas_Management','50_Safety','60_Advanced','70_Resources'

foreach ($d in $dirs) {
    # /MIR 鏡像：vault 為準，repo 端多出的檔案會被刪除（index.md 不在這些子資料夾內，不受影響）
    robocopy "$vault\$d" "$repo\content\$d" *.md /MIR /NJH /NJS /NDL /NC /NS | Out-Null
}

Set-Location $repo
git add content
if (-not (git status --porcelain content)) {
    Write-Host "沒有變更，不需發布。" -ForegroundColor Yellow
    exit 0
}
git commit -m $Message
git push
Write-Host "已推送。約 2-3 分鐘後生效：https://christseng1112.github.io/sidemount-knowledge/" -ForegroundColor Green
