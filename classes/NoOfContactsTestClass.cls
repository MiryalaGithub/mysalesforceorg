@isTest
public class NoOfContactsTestClass {
    @isTest static Void checkforAfterInsert(){
       Account a = new Account();
       a.Name = 'Roacky';
      a.No_of_Contacts__c = a.Contacts.Size();
        insert a;
        system.debug('List Inserted :'+a.Contacts.Size());
         Contact c = new Contact();
        c.LastName ='Bhai';
        c.AccountId = a.id;
        insert c;
        Integer Count =[select count() from Contact where LastName = 'Bhai'];
        system.debug('No of records inserted:'+Count);
        system.assertEquals(1, count);
        System.debug('Contact Inserted:'+c);
        System.debug('Contact updtaed:'+a);
        
       Account a1 = [select Id,No_of_Contacts__c,(select id from Contacts) from Account where id =:c.AccountId];
        a1.No_of_Contacts__c = a1.Contacts.size();
        system.debug('No of contacts:'+a1.No_of_Contacts__c);
        system.assertEquals(1, a1.No_of_Contacts__c);   
    }
}