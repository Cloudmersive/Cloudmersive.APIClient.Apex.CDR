public class SwagClient extends Swagger.ApiClient {
    public SwagClient() {
        basePath = 'https://api.cloudmersive.com';
        calloutName = 'CDR_API';
        authentications.put('Apikey', new Swagger.ApiKeyHeaderAuth('Apikey'));
    }
}
