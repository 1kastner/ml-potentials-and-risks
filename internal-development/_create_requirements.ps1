conda activate ml-hype-or-hybris

$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'

conda env export --no-builds --from-history > requirements.yml

$dirty_content = Get-Content requirements.yml
$clean_content = $dirty_content[0..($dirty_content.count-3)]

$clean_content > requirements.yml
