# Swagger\Client\ScanCloudStorageApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scanCloudStorageScanAwsS3File**](ScanCloudStorageApi.md#scanCloudStorageScanAwsS3File) | **POST** /virus/scan/cloud-storage/aws-s3/single | Scan an AWS S3 file for viruses
[**scanCloudStorageScanAwsS3FileAdvanced**](ScanCloudStorageApi.md#scanCloudStorageScanAwsS3FileAdvanced) | **POST** /virus/scan/cloud-storage/aws-s3/single/advanced | Advanced Scan an AWS S3 file for viruses
[**scanCloudStorageScanAzureBlob**](ScanCloudStorageApi.md#scanCloudStorageScanAzureBlob) | **POST** /virus/scan/cloud-storage/azure-blob/single | Scan an Azure Blob for viruses
[**scanCloudStorageScanAzureBlobAdvanced**](ScanCloudStorageApi.md#scanCloudStorageScanAzureBlobAdvanced) | **POST** /virus/scan/cloud-storage/azure-blob/single/advanced | Advanced Scan an Azure Blob for viruses
[**scanCloudStorageScanGcpStorageFile**](ScanCloudStorageApi.md#scanCloudStorageScanGcpStorageFile) | **POST** /virus/scan/cloud-storage/gcp-storage/single | Scan an Google Cloud Platform (GCP) Storage file for viruses
[**scanCloudStorageScanGcpStorageFileAdvanced**](ScanCloudStorageApi.md#scanCloudStorageScanGcpStorageFileAdvanced) | **POST** /virus/scan/cloud-storage/gcp-storage/single/advanced | Advanced Scan an Google Cloud Platform (GCP) Storage file for viruses
[**scanCloudStorageScanSharePointOnlineFile**](ScanCloudStorageApi.md#scanCloudStorageScanSharePointOnlineFile) | **POST** /virus/scan/cloud-storage/sharepoint-online/site/single | Virus Scan a file in a SharePoint Online Site Drive
[**scanCloudStorageScanSharePointOnlineFileAdvanced**](ScanCloudStorageApi.md#scanCloudStorageScanSharePointOnlineFileAdvanced) | **POST** /virus/scan/cloud-storage/sharepoint-online/site/advanced | Advanced Virus Scan a file in a SharePoint Online Site Drive


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
$key_name = "key_name_example"; // string | Key name (also called file name) of the file in S3 that you wish to scan for viruses.  If the key name contains Unicode characters, you must base64 encode the key name and prepend it with 'base64:', such as: 'base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV'.

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
 **key_name** | **string**| Key name (also called file name) of the file in S3 that you wish to scan for viruses.  If the key name contains Unicode characters, you must base64 encode the key name and prepend it with &#39;base64:&#39;, such as: &#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV&#39;. |

### Return type

[**\Swagger\Client\Model\CloudStorageVirusScanResult**](../Model/CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **scanCloudStorageScanAwsS3FileAdvanced**
> \Swagger\Client\Model\CloudStorageAdvancedVirusScanResult scanCloudStorageScanAwsS3FileAdvanced($access_key, $secret_key, $bucket_region, $bucket_name, $key_name, $allow_executables, $allow_invalid_files, $allow_scripts, $allow_password_protected_files, $allow_macros, $allow_xml_external_entities, $allow_insecure_deserialization, $allow_html, $restrict_file_types)

Advanced Scan an AWS S3 file for viruses

Advanced Scan the contents of a single AWS S3 file and its content for viruses and threats. Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

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
$key_name = "key_name_example"; // string | Key name (also called file name) of the file in S3 that you wish to scan for viruses.  If the key name contains Unicode characters, you must base64 encode the key name and prepend it with 'base64:', such as: 'base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV'.
$allow_executables = true; // bool | Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
$allow_invalid_files = true; // bool | Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
$allow_scripts = true; // bool | Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
$allow_password_protected_files = true; // bool | Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
$allow_macros = true; // bool | Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
$allow_xml_external_entities = true; // bool | Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
$allow_insecure_deserialization = true; // bool | Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
$allow_html = true; // bool | Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability].
$restrict_file_types = "restrict_file_types_example"; // string | Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult=false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.

try {
    $result = $apiInstance->scanCloudStorageScanAwsS3FileAdvanced($access_key, $secret_key, $bucket_region, $bucket_name, $key_name, $allow_executables, $allow_invalid_files, $allow_scripts, $allow_password_protected_files, $allow_macros, $allow_xml_external_entities, $allow_insecure_deserialization, $allow_html, $restrict_file_types);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScanCloudStorageApi->scanCloudStorageScanAwsS3FileAdvanced: ', $e->getMessage(), PHP_EOL;
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
 **key_name** | **string**| Key name (also called file name) of the file in S3 that you wish to scan for viruses.  If the key name contains Unicode characters, you must base64 encode the key name and prepend it with &#39;base64:&#39;, such as: &#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV&#39;. |
 **allow_executables** | **bool**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional]
 **allow_invalid_files** | **bool**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional]
 **allow_scripts** | **bool**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_password_protected_files** | **bool**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_macros** | **bool**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_xml_external_entities** | **bool**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional]
 **allow_insecure_deserialization** | **bool**| Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_html** | **bool**| Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability]. | [optional]
 **restrict_file_types** | **string**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional]

### Return type

[**\Swagger\Client\Model\CloudStorageAdvancedVirusScanResult**](../Model/CloudStorageAdvancedVirusScanResult.md)

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
$blob_path = "blob_path_example"; // string | Path to the blob within the container, such as 'hello.pdf' or '/folder/subfolder/world.pdf'.  If the blob path contains Unicode characters, you must base64 encode the blob path and prepend it with 'base64:', such as: 'base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV'.

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
 **blob_path** | **string**| Path to the blob within the container, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39;.  If the blob path contains Unicode characters, you must base64 encode the blob path and prepend it with &#39;base64:&#39;, such as: &#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV&#39;. |

### Return type

[**\Swagger\Client\Model\CloudStorageVirusScanResult**](../Model/CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **scanCloudStorageScanAzureBlobAdvanced**
> \Swagger\Client\Model\CloudStorageAdvancedVirusScanResult scanCloudStorageScanAzureBlobAdvanced($connection_string, $container_name, $blob_path, $allow_executables, $allow_invalid_files, $allow_scripts, $allow_password_protected_files, $allow_macros, $allow_xml_external_entities, $allow_insecure_deserialization, $allow_html, $restrict_file_types)

Advanced Scan an Azure Blob for viruses

Advanced Scan the contents of a single Azure Blob and its content for viruses and threats.  Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

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
$blob_path = "blob_path_example"; // string | Path to the blob within the container, such as 'hello.pdf' or '/folder/subfolder/world.pdf'.  If the blob path contains Unicode characters, you must base64 encode the blob path and prepend it with 'base64:', such as: 'base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV'.
$allow_executables = true; // bool | Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
$allow_invalid_files = true; // bool | Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
$allow_scripts = true; // bool | Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
$allow_password_protected_files = true; // bool | Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
$allow_macros = true; // bool | Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
$allow_xml_external_entities = true; // bool | Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
$allow_insecure_deserialization = true; // bool | Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
$allow_html = true; // bool | Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability].
$restrict_file_types = "restrict_file_types_example"; // string | Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult=false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.

try {
    $result = $apiInstance->scanCloudStorageScanAzureBlobAdvanced($connection_string, $container_name, $blob_path, $allow_executables, $allow_invalid_files, $allow_scripts, $allow_password_protected_files, $allow_macros, $allow_xml_external_entities, $allow_insecure_deserialization, $allow_html, $restrict_file_types);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScanCloudStorageApi->scanCloudStorageScanAzureBlobAdvanced: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connection_string** | **string**| Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal. |
 **container_name** | **string**| Name of the Blob container within the Azure Blob Storage account |
 **blob_path** | **string**| Path to the blob within the container, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39;.  If the blob path contains Unicode characters, you must base64 encode the blob path and prepend it with &#39;base64:&#39;, such as: &#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV&#39;. |
 **allow_executables** | **bool**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional]
 **allow_invalid_files** | **bool**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional]
 **allow_scripts** | **bool**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_password_protected_files** | **bool**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_macros** | **bool**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_xml_external_entities** | **bool**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional]
 **allow_insecure_deserialization** | **bool**| Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_html** | **bool**| Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability]. | [optional]
 **restrict_file_types** | **string**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional]

### Return type

[**\Swagger\Client\Model\CloudStorageAdvancedVirusScanResult**](../Model/CloudStorageAdvancedVirusScanResult.md)

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
$object_name = "object_name_example"; // string | Name of the object or file in Google Cloud Storage.  If the object name contains Unicode characters, you must base64 encode the object name and prepend it with 'base64:', such as: 'base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV'.
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
 **object_name** | **string**| Name of the object or file in Google Cloud Storage.  If the object name contains Unicode characters, you must base64 encode the object name and prepend it with &#39;base64:&#39;, such as: &#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV&#39;. |
 **json_credential_file** | **\SplFileObject**| Service Account credential for Google Cloud stored in a JSON file. |

### Return type

[**\Swagger\Client\Model\CloudStorageVirusScanResult**](../Model/CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **scanCloudStorageScanGcpStorageFileAdvanced**
> \Swagger\Client\Model\CloudStorageAdvancedVirusScanResult scanCloudStorageScanGcpStorageFileAdvanced($bucket_name, $object_name, $json_credential_file, $allow_executables, $allow_invalid_files, $allow_scripts, $allow_password_protected_files, $allow_macros, $allow_xml_external_entities, $allow_insecure_deserialization, $allow_html, $restrict_file_types)

Advanced Scan an Google Cloud Platform (GCP) Storage file for viruses

Advanced Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses and threats. Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

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
$object_name = "object_name_example"; // string | Name of the object or file in Google Cloud Storage.  If the object name contains Unicode characters, you must base64 encode the object name and prepend it with 'base64:', such as: 'base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV'.
$json_credential_file = "/path/to/file.txt"; // \SplFileObject | Service Account credential for Google Cloud stored in a JSON file.
$allow_executables = true; // bool | Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
$allow_invalid_files = true; // bool | Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
$allow_scripts = true; // bool | Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
$allow_password_protected_files = true; // bool | Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
$allow_macros = true; // bool | Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
$allow_xml_external_entities = true; // bool | Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
$allow_insecure_deserialization = true; // bool | Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
$allow_html = true; // bool | Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability].
$restrict_file_types = "restrict_file_types_example"; // string | Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult=false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.

try {
    $result = $apiInstance->scanCloudStorageScanGcpStorageFileAdvanced($bucket_name, $object_name, $json_credential_file, $allow_executables, $allow_invalid_files, $allow_scripts, $allow_password_protected_files, $allow_macros, $allow_xml_external_entities, $allow_insecure_deserialization, $allow_html, $restrict_file_types);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScanCloudStorageApi->scanCloudStorageScanGcpStorageFileAdvanced: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket_name** | **string**| Name of the bucket in Google Cloud Storage |
 **object_name** | **string**| Name of the object or file in Google Cloud Storage.  If the object name contains Unicode characters, you must base64 encode the object name and prepend it with &#39;base64:&#39;, such as: &#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV&#39;. |
 **json_credential_file** | **\SplFileObject**| Service Account credential for Google Cloud stored in a JSON file. |
 **allow_executables** | **bool**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional]
 **allow_invalid_files** | **bool**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional]
 **allow_scripts** | **bool**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_password_protected_files** | **bool**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_macros** | **bool**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_xml_external_entities** | **bool**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional]
 **allow_insecure_deserialization** | **bool**| Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_html** | **bool**| Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability]. | [optional]
 **restrict_file_types** | **string**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional]

### Return type

[**\Swagger\Client\Model\CloudStorageAdvancedVirusScanResult**](../Model/CloudStorageAdvancedVirusScanResult.md)

### Authorization

[Apikey](../../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **scanCloudStorageScanSharePointOnlineFile**
> \Swagger\Client\Model\CloudStorageVirusScanResult scanCloudStorageScanSharePointOnlineFile($client_id, $client_secret, $sharepoint_domain_name, $site_id, $file_path, $tenant_id, $item_id)

Virus Scan a file in a SharePoint Online Site Drive

Virus Scan the contents of a single SharePoint Online Site Drive file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time. To get the Client ID and Client Secret, follow these steps: (1) Navigate to the Azure Portal and click on Azure Active Directory, (2) click on App Registrations on the left hand side, (3) click on Register Application, (4) Name the application CloudmersiveAntiVirus and click on Register, (5) Get the client ID by clicking on Overview and copying the value labeled Application (client) ID, (6) click on Certificates and Secrets, (7) click on New client secret, choose a longer expiration and give the secret a name, (8) copy the secret value to the clipboard and save it securely, this is your Client Secret, (9) Now we need to grant permissions to SharePOint; click on API Permissions on the left hand side, (10) click on Add a permission and choose Microsoft Graph, (11) click on Application Permissions, (12) search for Sites.FullControl.All, (13) Click on Add Permissions, (14) now navigate back to Azure Active Directory and click on Enterprise Applications, click on CloudmersiveAntiVirus and click on Permissions, and (15) click on Grant Admin Consent.

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
$client_id = "client_id_example"; // string | Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal.
$client_secret = "client_secret_example"; // string | Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal
$sharepoint_domain_name = "sharepoint_domain_name_example"; // string | SharePoint Online domain name, such as mydomain.sharepoint.com
$site_id = "site_id_example"; // string | Site ID (GUID) of the SharePoint site you wish to retrieve the file from
$file_path = "file_path_example"; // string | Path to the file within the drive, such as 'hello.pdf' or '/folder/subfolder/world.pdf'.  If the file path contains Unicode characters, you must base64 encode the file path and prepend it with 'base64:', such as: 'base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV'.
$tenant_id = "tenant_id_example"; // string | Optional; Tenant ID of your Azure Active Directory
$item_id = "item_id_example"; // string | SharePoint itemID, such as a DriveItem Id

try {
    $result = $apiInstance->scanCloudStorageScanSharePointOnlineFile($client_id, $client_secret, $sharepoint_domain_name, $site_id, $file_path, $tenant_id, $item_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScanCloudStorageApi->scanCloudStorageScanSharePointOnlineFile: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **string**| Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal. |
 **client_secret** | **string**| Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal |
 **sharepoint_domain_name** | **string**| SharePoint Online domain name, such as mydomain.sharepoint.com |
 **site_id** | **string**| Site ID (GUID) of the SharePoint site you wish to retrieve the file from |
 **file_path** | **string**| Path to the file within the drive, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39;.  If the file path contains Unicode characters, you must base64 encode the file path and prepend it with &#39;base64:&#39;, such as: &#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV&#39;. |
 **tenant_id** | **string**| Optional; Tenant ID of your Azure Active Directory | [optional]
 **item_id** | **string**| SharePoint itemID, such as a DriveItem Id | [optional]

### Return type

[**\Swagger\Client\Model\CloudStorageVirusScanResult**](../Model/CloudStorageVirusScanResult.md)

### Authorization

[Apikey](../../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **scanCloudStorageScanSharePointOnlineFileAdvanced**
> \Swagger\Client\Model\CloudStorageAdvancedVirusScanResult scanCloudStorageScanSharePointOnlineFileAdvanced($client_id, $client_secret, $sharepoint_domain_name, $site_id, $tenant_id, $file_path, $item_id, $allow_executables, $allow_invalid_files, $allow_scripts, $allow_password_protected_files, $allow_macros, $allow_xml_external_entities, $allow_insecure_deserialization, $allow_html, $restrict_file_types)

Advanced Virus Scan a file in a SharePoint Online Site Drive

Advanced Virus Scan the contents of a single SharePoint Online Site Drive file and its content for viruses and threats.  Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time. To get the Client ID and Client Secret, follow these steps: (1) Navigate to the Azure Portal and click on Azure Active Directory, (2) click on App Registrations on the left hand side, (3) click on Register Application, (4) Name the application CloudmersiveAntiVirus and click on Register, (5) Get the client ID by clicking on Overview and copying the value labeled Application (client) ID, (6) click on Certificates and Secrets, (7) click on New client secret, choose a longer expiration and give the secret a name, (8) copy the secret value to the clipboard and save it securely, this is your Client Secret, (9) Now we need to grant permissions to SharePOint; click on API Permissions on the left hand side, (10) click on Add a permission and choose Microsoft Graph, (11) click on Application Permissions, (12) search for Sites.FullControl.All, (13) Click on Add Permissions, (14) now navigate back to Azure Active Directory and click on Enterprise Applications, click on CloudmersiveAntiVirus and click on Permissions, and (15) click on Grant Admin Consent.

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
$client_id = "client_id_example"; // string | Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal.
$client_secret = "client_secret_example"; // string | Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal
$sharepoint_domain_name = "sharepoint_domain_name_example"; // string | SharePoint Online domain name, such as mydomain.sharepoint.com
$site_id = "site_id_example"; // string | Site ID (GUID) of the SharePoint site you wish to retrieve the file from
$tenant_id = "tenant_id_example"; // string | Optional; Tenant ID of your Azure Active Directory
$file_path = "file_path_example"; // string | Path to the file within the drive, such as 'hello.pdf' or '/folder/subfolder/world.pdf'.  If the file path contains Unicode characters, you must base64 encode the file path and prepend it with 'base64:', such as: 'base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV'.
$item_id = "item_id_example"; // string | SharePoint itemID, such as a DriveItem Id
$allow_executables = true; // bool | Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended).
$allow_invalid_files = true; // bool | Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended).
$allow_scripts = true; // bool | Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended).
$allow_password_protected_files = true; // bool | Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended).
$allow_macros = true; // bool | Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
$allow_xml_external_entities = true; // bool | Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended).
$allow_insecure_deserialization = true; // bool | Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended).
$allow_html = true; // bool | Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability].
$restrict_file_types = "restrict_file_types_example"; // string | Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult=false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled.

try {
    $result = $apiInstance->scanCloudStorageScanSharePointOnlineFileAdvanced($client_id, $client_secret, $sharepoint_domain_name, $site_id, $tenant_id, $file_path, $item_id, $allow_executables, $allow_invalid_files, $allow_scripts, $allow_password_protected_files, $allow_macros, $allow_xml_external_entities, $allow_insecure_deserialization, $allow_html, $restrict_file_types);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ScanCloudStorageApi->scanCloudStorageScanSharePointOnlineFileAdvanced: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **string**| Client ID access credentials; see description above for instructions on how to get the Client ID from the Azure Active Directory portal. |
 **client_secret** | **string**| Client Secret access credentials; see description above for instructions on how to get the Client Secret from the Azure Active Directory portal |
 **sharepoint_domain_name** | **string**| SharePoint Online domain name, such as mydomain.sharepoint.com |
 **site_id** | **string**| Site ID (GUID) of the SharePoint site you wish to retrieve the file from |
 **tenant_id** | **string**| Optional; Tenant ID of your Azure Active Directory | [optional]
 **file_path** | **string**| Path to the file within the drive, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39;.  If the file path contains Unicode characters, you must base64 encode the file path and prepend it with &#39;base64:&#39;, such as: &#39;base64:6ZWV6ZWV6ZWV6ZWV6ZWV6ZWV&#39;. | [optional]
 **item_id** | **string**| SharePoint itemID, such as a DriveItem Id | [optional]
 **allow_executables** | **bool**| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional]
 **allow_invalid_files** | **bool**| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional]
 **allow_scripts** | **bool**| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_password_protected_files** | **bool**| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_macros** | **bool**| Set to false to block macros and other threats embedded in document files, such as Word, Excel and PowerPoint embedded Macros, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_xml_external_entities** | **bool**| Set to false to block XML External Entities and other threats embedded in XML files, and other files that contain embedded content threats. Set to true to allow these file types. Default is false (recommended). | [optional]
 **allow_insecure_deserialization** | **bool**| Set to false to block Insecure Deserialization and other threats embedded in JSON and other object serialization files, and other files that contain embedded content threats.  Set to true to allow these file types.  Default is false (recommended). | [optional]
 **allow_html** | **bool**| Set to false to block HTML input in the top level file; HTML can contain XSS, scripts, local file accesses and other threats.  Set to true to allow these file types.  Default is false (recommended) [for API keys created prior to the release of this feature default is true for backward compatability]. | [optional]
 **restrict_file_types** | **string**| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional]

### Return type

[**\Swagger\Client\Model\CloudStorageAdvancedVirusScanResult**](../Model/CloudStorageAdvancedVirusScanResult.md)

### Authorization

[Apikey](../../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

