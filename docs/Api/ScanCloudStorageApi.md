# Swagger\Client\ScanCloudStorageApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scanCloudStorageScanAwsS3File**](ScanCloudStorageApi.md#scanCloudStorageScanAwsS3File) | **POST** /virus/scan/cloud-storage/aws-s3/single | Scan an AWS S3 file for viruses
[**scanCloudStorageScanAzureBlob**](ScanCloudStorageApi.md#scanCloudStorageScanAzureBlob) | **POST** /virus/scan/cloud-storage/azure-blob/single | Scan an Azure Blob for viruses
[**scanCloudStorageScanGcpStorageFile**](ScanCloudStorageApi.md#scanCloudStorageScanGcpStorageFile) | **POST** /virus/scan/cloud-storage/gcp-storage/single | Scan an Google Cloud Platform (GCP) Storage file for viruses


# **scanCloudStorageScanAwsS3File**
> \Swagger\Client\Model\CloudStorageVirusScanResult scanCloudStorageScanAwsS3File($access_key, $secret_key, $bucket_region, $bucket_name, $key_name)

Scan an AWS S3 file for viruses

Scan the contents of a single AWS S3 file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Apikey
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('Apikey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Apikey', 'Bearer');

$apiInstance = new Swagger\Client\Api\ScanCloudStorageApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$access_key = "access_key_example"; // string | AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console
$secret_key = "secret_key_example"; // string | AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console
$bucket_region = "bucket_region_example"; // string | Name of the region of the S3 bucket, such as 'US-East-1'
$bucket_name = "bucket_name_example"; // string | Name of the S3 bucket
$key_name = "key_name_example"; // string | Key name (also called file name) of the file in S3 that you wish to scan for viruses

try {
    $result = $apiInstance->scanCloudStorageScanAwsS3File($access_key, $secret_key, $bucket_region, $bucket_name, $key_name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScanCloudStorageApi->scanCloudStorageScanAwsS3File: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_key** | **string**| AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console |
 **secret_key** | **string**| AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console |
 **bucket_region** | **string**| Name of the region of the S3 bucket, such as &#39;US-East-1&#39; |
 **bucket_name** | **string**| Name of the S3 bucket |
 **key_name** | **string**| Key name (also called file name) of the file in S3 that you wish to scan for viruses |

### Return type

[**\Swagger\Client\Model\CloudStorageVirusScanResult**](../Model/CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **scanCloudStorageScanAzureBlob**
> \Swagger\Client\Model\CloudStorageVirusScanResult scanCloudStorageScanAzureBlob($connection_string, $container_name, $blob_path)

Scan an Azure Blob for viruses

Scan the contents of a single Azure Blob and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Apikey
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('Apikey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Apikey', 'Bearer');

$apiInstance = new Swagger\Client\Api\ScanCloudStorageApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$connection_string = "connection_string_example"; // string | Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal.
$container_name = "container_name_example"; // string | Name of the Blob container within the Azure Blob Storage account
$blob_path = "blob_path_example"; // string | Path to the blob within the container, such as 'hello.pdf' or '/folder/subfolder/world.pdf'

try {
    $result = $apiInstance->scanCloudStorageScanAzureBlob($connection_string, $container_name, $blob_path);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScanCloudStorageApi->scanCloudStorageScanAzureBlob: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_string** | **string**| Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal. |
 **container_name** | **string**| Name of the Blob container within the Azure Blob Storage account |
 **blob_path** | **string**| Path to the blob within the container, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39; |

### Return type

[**\Swagger\Client\Model\CloudStorageVirusScanResult**](../Model/CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **scanCloudStorageScanGcpStorageFile**
> \Swagger\Client\Model\CloudStorageVirusScanResult scanCloudStorageScanGcpStorageFile($bucket_name, $object_name, $json_credential_file)

Scan an Google Cloud Platform (GCP) Storage file for viruses

Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: Apikey
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('Apikey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Apikey', 'Bearer');

$apiInstance = new Swagger\Client\Api\ScanCloudStorageApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$bucket_name = "bucket_name_example"; // string | Name of the bucket in Google Cloud Storage
$object_name = "object_name_example"; // string | Name of the object or file in Google Cloud Storage
$json_credential_file = "/path/to/file.txt"; // \SplFileObject | Service Account credential for Google Cloud stored in a JSON file.

try {
    $result = $apiInstance->scanCloudStorageScanGcpStorageFile($bucket_name, $object_name, $json_credential_file);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScanCloudStorageApi->scanCloudStorageScanGcpStorageFile: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket_name** | **string**| Name of the bucket in Google Cloud Storage |
 **object_name** | **string**| Name of the object or file in Google Cloud Storage |
 **json_credential_file** | **\SplFileObject**| Service Account credential for Google Cloud stored in a JSON file. |

### Return type

[**\Swagger\Client\Model\CloudStorageVirusScanResult**](../Model/CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

