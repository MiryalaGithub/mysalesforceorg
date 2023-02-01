@isTest
public class UpdateOwnerOnAccountTestClass {
@isTest 
    public static void checkmethod(){
        //UpdateOwnerOnAccountClass OwnerInstance = new UpdateOwnerOnAccountClass();
        //OwnerInstance.updateOwner();
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
            Account na = new Account();
            na.Name = 'Before Account';
            na.Territory__c ='EAST';
            insert na;
            system.debug(na);
            AccountOwner__c ao = new AccountOwner__c();
        ao.Territory__c ='WEST';
            ao.OwnerId = u.id;
            ao.Account__c= na.Id;
        insert ao;
            Account a = new Account();
        a.Id= na.Id;
            a.Territory__c ='East';
        Update a;
           // String Acid = a.id;
           // system.debug(+Acid);
       // System.debug(a);//0015g000011jMhVAAU
              /* Account b = new Account();
               b.Id= Acid;
               b.Territory__c ='WEST';  
            update b;
            System.debug(b);*/
            System.debug(ao.OwnerId);
            System.debug(a.OwnerId);
       //system.assertEquals(ao.OwnerId,b.OwnerId);
        }
        
            
        }        
    }