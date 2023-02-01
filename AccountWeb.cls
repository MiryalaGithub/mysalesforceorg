public with sharing class AccountWeb {
    public static Http http = new Http();
    public static HTTPResponse response;
    public static HttpRequest request;
 
    public class NewAccountRequestWrapper {
        public String name {get; set;}
        public String phone {get; set;}
    }
    public static void addAccount(NewAccountRequestWrapper newAccount) {
 
        request = new HttpRequest();
        request.setMethod('POST');
        request.setEndpoint('callout:SFDCCRED/services/apexrest/Account');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody(JSON.serialize(newAccount));
 
        response = http.send(request); 
 
        System.debug(response.getBody());
    }

}