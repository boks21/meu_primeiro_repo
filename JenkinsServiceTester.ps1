
#######################################################################################################################

#Windows Batch Command in Jenkins
#powershell.exe -executionpolicy bypass -command "& '%WORKSPACE%\Jenkins_PostmanDemo.ps1'"

echo "You are testing PIP services"

$SourceFilePath = $env:WORKSPACE

	newman run $SourceFilePath\PIP_Series.postman_collection.json -e $SourceFilePath\PIP.postman_environment.json -d $SourceFilePath\series_data.json --insecure --disable-unicode -r html,cli
	
	newman run $SourceFilePath\PIP_Models.postman_collection.json -e $SourceFilePath\PIP.postman_environment.json -d $SourceFilePath\models_data.json --insecure --disable-unicode -r html,cli
	
	newman run $SourceFilePath\PIP_Attributes.postman_collection.json -e $SourceFilePath\PIP.postman_environment.json -d $SourceFilePath\attributes_data.json --insecure --disable-unicode -r html,cli
	
	newman run $SourceFilePath\PIP_Rules.postman_collection.json -e $SourceFilePath\PIP.postman_environment.json -d $SourceFilePath\rules_data.json --insecure --disable-unicode -r html,cli
	
	newman run $SourceFilePath\PIP_Usages.postman_collection.json -e $SourceFilePath\PIP.postman_environment.json -d $SourceFilePath\usages_data.json --insecure --disable-unicode -r html,cli

exit $LASTEXITCODE
