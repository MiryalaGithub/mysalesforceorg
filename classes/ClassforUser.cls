public class ClassforUser {
    
    public void createuser(){
      
        Profile p = [SELECT Id FROM Profile WHERE Name='Kfc']; 
        User u = new User(Alias = 'Kfg', Email='standarduser@testorg.com', 
            EmailEncodingKey='UTF-8', LastName='Testing', LanguageLocaleKey='en_US', 
            LocaleSidKey='en_US', ProfileId = p.Id, 
            TimeZoneSidKey='America/Los_Angeles', UserName='kfg@kfc.com');
        System.debug('Current User: ' + UserInfo.getUserName());
            System.debug('Current Profile: ' + UserInfo.getProfileId());
        
        
        
    }







}