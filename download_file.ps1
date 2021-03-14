#$branch="sample"
#(Invoke-WebRequest -Uri "https://github.com/thakyZ/powershell-docker-test/raw/${branch}/sample-zip-file.zip" -UseBasicParsing -OutFile dummy.zip &&
#Expand-Archive dummy.zip -DestinationPath . &&
#Copy-Item -Path sample-zip-file\* -Recurse -Destination . &&
#Remove-Item dummy.zip &&
#Get-ChildItem -Path .) || Exit 1;

$BYOND_MAJOR=513
$BYOND_MINOR=1536

try {
	Invoke-WebRequest -Uri "http://www.byond.com/download/build/${BYOND_MAJOR}/${BYOND_MAJOR}.${BYOND_MINOR}_byond.zip" -UseBasicParsing -OutFile byond.zip
    Expand-Archive byond.zip -DestinationPath .
    Copy-Item -Path byond\* -Recurse -Destination .
    Remove-Item -Path byond.zip
}
catch {
	Write-Error "Failed."
	Write-Error -Message $_
}
finally {
	Write-Host "Successful!"
}
