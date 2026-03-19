# CDR API API Client

Use the Content Disarm and Reconstruction API to remove security risks from documents by tearing them down, removing unsafe content and rebuilding them.

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)


If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```


## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
   $ sfdx force:source:push
   ```
3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

    ```bash
    $ sfdx sfdx force:apex:test:run
    ```
5. Retrieve the job id from the console and check the test results.

  ```bash
  $ sfdx force:apex:test:report -i theJobId
  ```


## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
SwagFileSanitizationApi api = new SwagFileSanitizationApi();
SwagClient client = api.getClient();


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

## Documentation for API Endpoints

All URIs are relative to *https://api.cloudmersive.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwagFileSanitizationApi* | [**file**](docs/SwagFileSanitizationApi.md#file) | **POST** /cdr/sanitization/file | Content Disarm and Reconstruction on a File
*SwagFileSanitizationApi* | [**fileAdvanced**](docs/SwagFileSanitizationApi.md#fileAdvanced) | **POST** /cdr/sanitization/file/advanced | Advanced Content Disarm and Reconstruction on a File
*SwagFileSanitizationApi* | [**fileToPdf**](docs/SwagFileSanitizationApi.md#fileToPdf) | **POST** /cdr/sanitization/file/to/pdf | Content Disarm and Reconstruction on a File with PDFA Output
*SwagFileSanitizationApi* | [**fileToPdfAdvanced**](docs/SwagFileSanitizationApi.md#fileToPdfAdvanced) | **POST** /cdr/sanitization/file/to/pdf/advanced | Advanced Content Disarm and Reconstruction on a File with PDFA Output


## Documentation for Models

 - [SwagProblemDetails](docs/SwagProblemDetails.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header


## Author



