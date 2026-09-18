$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

$requiredFiles = @(
    "README.md",
    "SKILL.md",
    "config.example.json",
    "templates\automation-prompt.md",
    "templates\candidate-note.md",
    "templates\promotion-checklist.md",
    "templates\weekly-handoff.md",
    "connectors\README.md",
    "connectors\scout.md",
    "connectors\generic-m365.md",
    "scripts\Initialize-ProofIpHarvester.ps1"
)

foreach ($file in $requiredFiles) {
    $path = Join-Path $root $file
    if (-not (Test-Path -LiteralPath $path)) {
        throw "Missing required file: $file"
    }
}

$configPath = Join-Path $root "config.example.json"
Get-Content -LiteralPath $configPath -Raw | ConvertFrom-Json | Out-Null

$content = Get-ChildItem -LiteralPath $root -Recurse -File |
    Where-Object { $_.Extension -in ".md", ".json", ".ps1" } |
    ForEach-Object { Get-Content -LiteralPath $_.FullName -Raw }

$blockedFragments = @(
    ("jortiz" + "flores"),
    ("Obsidian " + "Vault"),
    ("voltage" + "-day"),
    ("Customer Proof " + "Friday")
)

foreach ($fragment in $blockedFragments) {
    if ($content -match [regex]::Escape($fragment)) {
        throw "Package contains personal or implementation-specific fragment: $fragment"
    }
}

Write-Host "Proof & IP Harvester package validation passed."
