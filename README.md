# cloudmersive_virusscan_api_client
Virus API lets you scan files and content for viruses and identify security issues with content.

[Cloudmersive Virus Scan API](https://www.cloudmersive.com/virus-api) provides advanced virus scanning capabilities.

- API version: v1
- Package version: 1.4.2


## Requirements

PHP 5.5 and later

## Installation & Usage
### Composer

To install the bindings via [Composer](http://getcomposer.org/), add the following to `composer.json`:

```
{
  "repositories": [
    {
      "type": "git",
      "url": "https://github.com/cloudmersive/cloudmersive_virusscan_api_client.git"
    }
  ],
  "require": {
    "cloudmersive/cloudmersive_virusscan_api_client": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
    require_once('/path/to/cloudmersive_virusscan_api_client/vendor/autoload.php');
```

## Tests

To run the unit tests:

```
composer install
./vendor/bin/phpunit
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Apikey
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('Apikey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Apikey', 'Bearer');

$apiInstance = new Swagger\Client\Api\ScanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$input_file = "/path/to/file.txt"; // \SplFileObject | Input file to perform the operation on.

try {
    $result = $apiInstance->scanFile($input_file);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScanApi->scanFile: ', $e->getMessage(), PHP_EOL;
}

?>
```

## Documentation for API Endpoints

All URIs are relative to *https://api.cloudmersive.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ScanApi* | [**scanFile**](docs/Api/ScanApi.md#scanfile) | **POST** /virus/scan/file | Scan a file for viruses
*ScanApi* | [**scanWebsite**](docs/Api/ScanApi.md#scanwebsite) | **POST** /virus/scan/website | Scan a website for malicious content including viruses and threats (including Phishing)


## Documentation For Models

 - [VirusFound](docs/Model/VirusFound.md)
 - [VirusScanResult](docs/Model/VirusScanResult.md)
 - [WebsiteScanRequest](docs/Model/WebsiteScanRequest.md)
 - [WebsiteScanResult](docs/Model/WebsiteScanResult.md)


## Documentation For Authorization


## Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header


## Author




