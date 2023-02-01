//This annaotation tells system that this class will be invoked by external callout
@RestResource(urlMapping='/v/createAccount/*')
//Url mapping tells which Apex class has to invoked out of many apex class
Global with sharing class accountRestService {
//It is global accessfier so that external org can have acess to that class
    @HttpPost
//Post tell that a record to be inserted
    global static string dopost(){
        RestRequest req = RestContext.request;
// Here we Id or URI from first line mapping
        String jsonRes = req.requestBody.toString();
// Json request will be in the String format 
// Deseralize will covert string to Object
        Account a =(Account)Json.deserialize(jsonRes, Account.Class);
        try{
            insert a;
            return 'Account Created';
        }
        catch(Exception ex){
            return ex.getMessage();
        }
    }

}