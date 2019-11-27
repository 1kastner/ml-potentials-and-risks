# This script updates the environment.yml and spec-file.txt
# It is meant to be used by the developer of the repository for maintenance

# Stop on first error
Set-StrictMode -Version latest
Set-PSDebug -Trace 1
$ErrorActionPreference = "Stop"

# Use correct environment
conda activate ml-hype-or-hybris
if (-not $?) {throw "Failed to activate conda environment 'ml-hype-or-hybris'"}

# Export minimal environment (includes prefix with hardcoded path)
$PSDefaultParameterValues['Out-File:Encoding'] = 'ASCII'
conda env export --no-builds --from-history > environment.yml
if (-not $?) {throw "Failed to export conda environment as YAML"}

# Cut off hardcoded path which is in the last line
$dirty_content = Get-Content environment.yml
$clean_content = $dirty_content[0..($dirty_content.count-3)]
$clean_content > environment.yml

# To be on the safe side, also create an explicit file
conda list --explicit > spec-file.txt
if (-not $?) {throw "Failed to export conda environment as SPEC-File"}
