public class BasicHttpCollout {
    public static void makeBasicCollout(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://postman-echo.com/get?foo1=bar1&foo2=bar2');
        request.setMethod('GET');
    
        HttpResponse response = http.send(request);
    
        if (response.getStatusCode() == 200) {
            System.debug('Received Response:'+response.getBody());
        }
    }
}