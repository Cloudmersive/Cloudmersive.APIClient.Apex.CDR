@isTest
private class SwagFileSanitizationApiTest {
    /**
     * Content Disarm and Reconstruction on a File
     *
     * Processes the input file via CDR to produce a secured output file.  Input content is parsed, disarmed, and then reconstructed into a new output file with the same file format as the input.
     */
    @isTest
    private static void fileTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagFileSanitizationApi api;
        String response;
        String expectedResponse;

        client = new SwagClient();
        api = new SwagFileSanitizationApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = ;
        response = (String) api.file(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Advanced Content Disarm and Reconstruction on a File
     *
     * Processes the input file via CDR to produce a secured output file with advanced scan options and response headers containing scan metadata.
     */
    @isTest
    private static void fileAdvancedTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

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

        SwagClient client;
        SwagFileSanitizationApi api;
        String response;
        String expectedResponse;

        client = new SwagClient();
        api = new SwagFileSanitizationApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = ;
        response = (String) api.fileAdvanced(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Content Disarm and Reconstruction on a File with PDFA Output
     *
     * Processes the input file via CDR to produce a secured PDF/A output file.  Input content is parsed, disarmed, and then reconstructed into a new PDF/A output file.
     */
    @isTest
    private static void fileToPdfTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'inputFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagFileSanitizationApi api;
        String response;
        String expectedResponse;

        client = new SwagClient();
        api = new SwagFileSanitizationApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = ;
        response = (String) api.fileToPdf(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Advanced Content Disarm and Reconstruction on a File with PDFA Output
     *
     * Processes the input file via CDR to produce a secured PDF/A output file with advanced scan options and response headers containing scan metadata.
     */
    @isTest
    private static void fileToPdfAdvancedTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

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

        SwagClient client;
        SwagFileSanitizationApi api;
        String response;
        String expectedResponse;

        client = new SwagClient();
        api = new SwagFileSanitizationApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = ;
        response = (String) api.fileToPdfAdvanced(params);
        System.assertEquals(expectedResponse, response);
    }
}