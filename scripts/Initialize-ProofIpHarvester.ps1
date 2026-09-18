param(
    [Parameter(Mandatory = $true)]
    [string]$RootPath
)

$folders = @(
    "raw\reusable-ip-candidates",
    "responses",
    "wiki\concepts",
    "wiki\architectures",
    "wiki\outputs"
)

foreach ($folder in $folders) {
    $path = Join-Path $RootPath $folder
    New-Item -ItemType Directory -Force -Path $path | Out-Null
}

Write-Host "Proof & IP Harvester folders initialized under $RootPath"

