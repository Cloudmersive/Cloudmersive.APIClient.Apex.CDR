@isTest
private class SwagFileSanitizationApiTest {
    /**
     * Complete Content Disarm and Reconstruction on an Input File, and output in same file format
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

        client = new SwagClient();
        api = new SwagFileSanitizationApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        api.file(params);
    }

    /**
     * Complete Content Disarm and Reconstruction on an Input File with PDF/A Output
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

        client = new SwagClient();
        api = new SwagFileSanitizationApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        api.fileToPdf(params);
    }
}