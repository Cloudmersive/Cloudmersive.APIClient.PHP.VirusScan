#Remove-Item –path ./ –recurse
& java -jar swagger-codegen-cli.jar generate -i https://api.cloudmersive.com/swagger/api/virus -l php -c packageconfig.json
#(Get-Content ./client/package.json).replace('v1', '1.0.1') | Set-Content ./client/package.json
Copy-Item ./cloudmersive_virusscan_api_client/* -Destination . -Recurse -Force
Remove-Item –path ./cloudmersive_virusscan_api_client –recurse

# Bug fix

(Get-Content ./vendor/guzzlehttp/guzzle/src/Client.php).replace("'verify'          => true,", "'verify'          => false,") | Set-Content ./vendor/guzzlehttp/guzzle/src/Client.php


& php C:\ProgramData\ComposerSetup\bin\composer.phar install