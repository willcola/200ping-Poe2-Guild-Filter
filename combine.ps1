# Get the path of the current directory
$currentDirectory = Get-Location

# Get the parent directory
$parentDirectory = Split-Path -Path (Get-Location) -Parent

# Define the file paths
$inputFilePath = Join-Path $parentDirectory "NeverSinks Litefilter.filter"
$replaceFilePath = Join-Path $currentDirectory "200Ping.filter"
$combinedFilePath = Join-Path $parentDirectory "GUILD_COMBINED.filter"

# Define the boundary markers
$boundarySplit = "### BOUNDARY_SPLIT"

# Read the contents of the input and replace files, ensuring proper encoding
$inputContents = Get-Content -Path $inputFilePath -Raw -Encoding UTF8
$replaceContents = Get-Content -Path $replaceFilePath -Raw -Encoding UTF8

$splitContent = $inputContents -split $boundarySplit
$beforeBoundary = $splitContent[0]
$afterBoundary = $splitContent[1]

$combinedContents = $beforeBoundary + $replaceContents + $afterBoundary
    
# Save the combined content to combined.filter
Set-Content -Path $combinedFilePath -Value $combinedContents
Write-Host "Combined file saved to $combinedFilePath"
