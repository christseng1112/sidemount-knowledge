
﻿# publish.ps1 - Sync latest notes from OneDrive vault to site repo and publish
# Usage: .\publish.ps1 ["commit message"]

param([string]$Message = "Update notes $(Get-Date -Format 'yyyy-MM-dd HH:mm')")

$vault = "C:\Users\chris.tseng\OneDrive - Bora Group\桌面\側掛知識流"
$repo  = $PSScriptRoot
$dirs  = @(
    "00_MOCs", "10_Concepts", "20_Equipment", "30_Skills",
    "40_Gas_Management", "50_Safety", "60_Advanced", "70_Resources",
    "en/00_MOCs", "en/10_Concepts", "en/20_Equipment", "en/30_Skills",
    "en/40_Gas_Management", "en/50_Safety", "en/60_Advanced", "en/70_Resources"
)

foreach ($d in $dirs) {
    # Mirror vault to repo content directory
    $targetDir = Join-Path $repo ("content\" + $d)
    if (-not (Test-Path $targetDir)) {
        New-Item -ItemType Directory -Path $targetDir | Out-Null
    }
    robocopy "$vault\$d" $targetDir *.md /MIR /NJH /NJS /NDL /NC /NS | Out-Null
}

Set-Location $repo
git add content quartz.config.yaml publish.ps1
if (-not (git status --porcelain content quartz.config.yaml publish.ps1)) {
    Write-Host "No changes to publish." -ForegroundColor Yellow
    exit 0
}
git commit -m $Message
git push
Write-Host "Pushed. Changes will take effect in 2-3 mins: https://christseng1112.github.io/sidemount-knowledge/" -ForegroundColor Green
