# SwagFileSanitizationApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**file**](SwagFileSanitizationApi.md#file) | **POST** /cdr/sanitization/file | Content Disarm and Reconstruction on a File
[**fileAdvanced**](SwagFileSanitizationApi.md#fileAdvanced) | **POST** /cdr/sanitization/file/advanced | Advanced Content Disarm and Reconstruction on a File
[**fileToPdf**](SwagFileSanitizationApi.md#fileToPdf) | **POST** /cdr/sanitization/file/to/pdf | Content Disarm and Reconstruction on a File with PDFA Output
[**fileToPdfAdvanced**](SwagFileSanitizationApi.md#fileToPdfAdvanced) | **POST** /cdr/sanitization/file/to/pdf/advanced | Advanced Content Disarm and Reconstruction on a File with PDFA Output


<a name="file"></a>
# **file**
> String file(inputFile)

Content Disarm and Reconstruction on a File

Processes the input file via CDR to produce a secured output file.  Input content is parsed, disarmed, and then reconstructed into a new output file with the same file format as the input.

### Example
```java
SwagFileSanitizationApi api = new SwagFileSanitizationApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    String result = api.file(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input document, or photos of a document, to extract data from | [optional]

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="fileAdvanced"></a>
# **fileAdvanced**
> String fileAdvanced(allowExecutables, allowInvalidFiles, allowScripts, allowPasswordProtectedFiles, allowMacros, allowXmlExternalEntities, allowInsecureDeserialization, allowHtml, allowUnsafeArchives, allowOleEmbeddedObject, allowUnwantedAction, restrictFileTypes, inputFile)

Advanced Content Disarm and Reconstruction on a File

Processes the input file via CDR to produce a secured output file with advanced scan options and response headers containing scan metadata.

### Example
```java
SwagFileSanitizationApi api = new SwagFileSanitizationApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'allowExecutables' => true,
    'allowInvalidFiles' => true,
    'allowScripts' => true,
    'allowPasswordProtectedFiles' => true,
    'allowMacros' => true,
    'allowXmlExternalEntities' => true,
    'allowInsecureDeserialization' => true,
    'allowHtml' => true,
    'allowUnsafeArchives' => true,
    'allowOleEmbeddedObject' => true,
    'allowUnwantedAction' => true,
    'restrictFileTypes' => 'restrictFileTypes_example',
    'inputFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    String result = api.fileAdvanced(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allowExecutables** | **Boolean**| Set to false to block executable files (EXE, DLL, etc.) | [optional]
 **allowInvalidFiles** | **Boolean**| Set to false to block files that are not valid for their detected type | [optional]
 **allowScripts** | **Boolean**| Set to false to block script files. PDF and Office macro sanitization still runs regardless. | [optional]
 **allowPasswordProtectedFiles** | **Boolean**| Set to false to block password-protected files | [optional]
 **allowMacros** | **Boolean**| Set to false to block files containing macros. Office macro removal still runs regardless. | [optional]
 **allowXmlExternalEntities** | **Boolean**| Set to false to block XML files with external entity references (XXE) | [optional]
 **allowInsecureDeserialization** | **Boolean**| Set to false to block files with insecure deserialization patterns | [optional]
 **allowHtml** | **Boolean**| Set to false to block HTML files | [optional]
 **allowUnsafeArchives** | **Boolean**| Set to false to block archive files flagged as unsafe (e.g., zip bombs) | [optional]
 **allowOleEmbeddedObject** | **Boolean**| Set to false to block files with embedded OLE objects | [optional]
 **allowUnwantedAction** | **Boolean**| Set to false to block files with unwanted actions | [optional]
 **restrictFileTypes** | **String**| Comma-separated list of allowed file extensions (e.g., &quot;.pdf,.docx,.xlsx&quot;). Files not matching will be blocked. | [optional]
 **inputFile** | **Blob**| Input document to CDR process | [optional]

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="fileToPdf"></a>
# **fileToPdf**
> String fileToPdf(inputFile)

Content Disarm and Reconstruction on a File with PDFA Output

Processes the input file via CDR to produce a secured PDF/A output file.  Input content is parsed, disarmed, and then reconstructed into a new PDF/A output file.

### Example
```java
SwagFileSanitizationApi api = new SwagFileSanitizationApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'inputFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    String result = api.fileToPdf(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **Blob**| Input document, or photos of a document, to extract data from | [optional]

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

<a name="fileToPdfAdvanced"></a>
# **fileToPdfAdvanced**
> String fileToPdfAdvanced(allowExecutables, allowInvalidFiles, allowScripts, allowPasswordProtectedFiles, allowMacros, allowXmlExternalEntities, allowInsecureDeserialization, allowHtml, allowUnsafeArchives, allowOleEmbeddedObject, allowUnwantedAction, restrictFileTypes, inputFile)

Advanced Content Disarm and Reconstruction on a File with PDFA Output

Processes the input file via CDR to produce a secured PDF/A output file with advanced scan options and response headers containing scan metadata.

### Example
```java
SwagFileSanitizationApi api = new SwagFileSanitizationApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'allowExecutables' => true,
    'allowInvalidFiles' => true,
    'allowScripts' => true,
    'allowPasswordProtectedFiles' => true,
    'allowMacros' => true,
    'allowXmlExternalEntities' => true,
    'allowInsecureDeserialization' => true,
    'allowHtml' => true,
    'allowUnsafeArchives' => true,
    'allowOleEmbeddedObject' => true,
    'allowUnwantedAction' => true,
    'restrictFileTypes' => 'restrictFileTypes_example',
    'inputFile' => Blob.valueOf('Sample text file\nContents')
};

try {
    // cross your fingers
    String result = api.fileToPdfAdvanced(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allowExecutables** | **Boolean**| Set to false to block executable files (EXE, DLL, etc.) | [optional]
 **allowInvalidFiles** | **Boolean**| Set to false to block files that are not valid for their detected type | [optional]
 **allowScripts** | **Boolean**| Set to false to block script files. PDF and Office macro sanitization still runs regardless. | [optional]
 **allowPasswordProtectedFiles** | **Boolean**| Set to false to block password-protected files | [optional]
 **allowMacros** | **Boolean**| Set to false to block files containing macros. Office macro removal still runs regardless. | [optional]
 **allowXmlExternalEntities** | **Boolean**| Set to false to block XML files with external entity references (XXE) | [optional]
 **allowInsecureDeserialization** | **Boolean**| Set to false to block files with insecure deserialization patterns | [optional]
 **allowHtml** | **Boolean**| Set to false to block HTML files | [optional]
 **allowUnsafeArchives** | **Boolean**| Set to false to block archive files flagged as unsafe (e.g., zip bombs) | [optional]
 **allowOleEmbeddedObject** | **Boolean**| Set to false to block files with embedded OLE objects | [optional]
 **allowUnwantedAction** | **Boolean**| Set to false to block files with unwanted actions | [optional]
 **restrictFileTypes** | **String**| Comma-separated list of allowed file extensions (e.g., &quot;.pdf,.docx,.xlsx&quot;). Files not matching will be blocked. | [optional]
 **inputFile** | **Blob**| Input document to CDR process | [optional]

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

