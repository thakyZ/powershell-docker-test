(Invoke-WebRequest -Uri "https://github.com/thakyZ/powershell-docker-test/raw/sample/sample-zip-file.zip" -UseBasicParsing -OutFile dummy.zip &&
Expand-Archive dummy.zip -DestinationPath . &&
Copy-Item -Path sample-zip-file\* -Recurse -Destination . &&
Remove-Item dummy.zip &&
Get-ChildItem -Path .) || Exit 1;
