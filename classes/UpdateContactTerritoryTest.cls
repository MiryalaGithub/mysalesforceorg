@isTest
public class UpdateContactTerritoryTest {
@isTest
    Public static void createadataforTest(){
        system.debug('Before Excecuting');
         List<Profile> p = [SELECT Id,Name FROM Profile WHERE Name='Standard User']; 
        User u = new User(Alias = 'Kfgs', Email='standarduser@testorg.com', 
            EmailEncodingKey='UTF-8', LastName='Testing', LanguageLocaleKey='en_US', 
            LocaleSidKey='en_US', ProfileId = p[0].Id, 
            TimeZoneSidKey='America/Los_Angeles', UserName='kfg@kfc.com');
        System.debug('Current User: ' + UserInfo.getUserName());
            System.debug('Current Profile: ' + UserInfo.getProfileId());
        insert u;
        system.runAs(u) {
            Account a = new Account();
            a.Name ='RISHI';
            a.Territory__c = 'SOUTH';
            insert a;
            system.debug(a);
            AccountOwner__c ao = new AccountOwner__c();
            ao.OwnerId = u.Id;
            ao.Territory__c='SOUTH';
            ao.Account__c = a.id;
            insert ao;
            
            system.debug(a.Id);
            system.debug(a.Territory__c);
            Contact c = new Contact();
            c.FirstName = 'Shekar';
            c.LastName='Kams';
            c.AccountId =a.id;
            c.Territory__c ='SOUTH';
            insert c;
           
        }
        
    }
}