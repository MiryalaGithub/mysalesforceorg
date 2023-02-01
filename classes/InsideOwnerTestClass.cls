@isTest(SeeAllData=True)
public class InsideOwnerTestClass {
    public static testMethod void testForAfterInsert(){
        
         List<Profile> p = [SELECT Id,Name FROM Profile WHERE Name='Standard User']; 
        User u = new User(Alias = 'Kfgs', Email='standarduser@testorg.com', 
            EmailEncodingKey='UTF-8', LastName='Testing', LanguageLocaleKey='en_US', 
            LocaleSidKey='en_US', ProfileId = p[0].Id, 
            TimeZoneSidKey='America/Los_Angeles', UserName='kfg@kfc.com');
        System.debug('Current User: ' + UserInfo.getUserName());
            System.debug('Current Profile: ' + UserInfo.getProfileId());
        insert u;
        System.debug('Useeeeeee Profile: ' + u.Id);
        Account acc = new Account(Name='Sai',InsideOwner__c=u.Id);
        //a.Name ='Sai';
        //a.InsideOwner__c=u.Id;
        insert acc;
        acc = [select Id,Name, InsideOwner__c from Account where Id = :acc.Id];
        System.debug('ACCOUNT INDERSTS'+acc);
        System.debug('ACCOUNT IDDD'+acc.Id);
        Contact cont = new Contact(LastName='REDFGD',AccountId=acc.Id);
        //cont.FirstName ='KFC';
        //cont.Salutation ='Mr.';
        //cont.LastName ='MrKFC';
        //cont.AccountId = acc.Id;
          Test.startTest();
        insert cont;
        cont = [select Id,OwnerId, LastName,AccountId from Contact where Id = :cont.Id];
        System.debug('CONTACT USER'+cont);
        System.debug('CONTACT NAMW===='+cont.LastName);
         System.debug('CONTACT OWNEW===='+cont.OwnerId);
        System.debug('User USER'+u.Id);
       
          Test.stopTest();
         System.assertEquals(cont.OwnerId, u.Id);
        
        
    } 
}