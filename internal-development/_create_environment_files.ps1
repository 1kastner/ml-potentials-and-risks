# Use correct environment
conda activate ml-hype-or-hybris

# Export minimal environment (includes prefix with hardcoded path)
$PSDefaultParameterValues['Out-File:Encoding'] = 'ASCII'
conda env export --no-builds --from-history > environment.yml

# Cut off hardcoded path which is in the last line
$dirty_content = Get-Content environment.yml
$clean_content = $dirty_content[0..($dirty_content.count-3)]
$clean_content > environment.yml

# To be on the safe side, also create an explicit file
conda list --explicit > spec-file.txt
