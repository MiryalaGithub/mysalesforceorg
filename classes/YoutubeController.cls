public class YoutubeController {
    Public String body {set;get;}
    public static  void search(){
        String endpoint = 'https://youtube.googleapis.com/youtube/v3/search?part=Snippet&q=Salesforce&key= AIzaSyA2Gn-eI7L7LpRV61JX9MdfbpBUc3zRQF8';
        Http http = new Http();
        HttpRequest  request = new HttpRequest();
        request.setHeader('Accept', 'Application/Json');
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        
        HttpResponse  response =  http.send(request);    
        String body = response.getBody();
       
    }

}