@isTest
public class AccountBlngAdress7AMTest {
@isTest
    public static void recordtest(){
        List<Account> ActList =new List<Account>();
        List<Contact> ContList = new List<Contact>();
        for(Integer i=0;i<10;i++){
            Contact  c = new Contact();
            c.LastName = 'LastName'+i;
            c.MailingCity ='MailingCity'+i;
            c.MailingCountry='MailingCountry'+i;
            c.MailingState ='MailingState'+i;
            ContList.add(c); 
            Account a = new Account();
            a.Name ='Name'+i;
            a.BillingCity ='City'+i;
            a.BillingCountry = 'Country'+i;
            a.BillingState ='State'+i;
            a.id =c.AccountId;
            ActList.add(a);
             
        }
        insert ActList;
        insert ContList;
        system.debug(ActList);
        system.debug(ContList);
        Test.startTest();
        // AccountBlngAdressFromContactAt7am actObj = new AccountBlngAdressFromContactAt7am();
        //  Database.executeBatch(actObj, 9);
        Test.stopTest();
    }

    public static testMethod void testschedule(){
        SchedulerForBatchApex7AM  batchvar = new SchedulerForBatchApex7AM();
        Test.startTest();
        String sch = '0 0 23 * * ?';
		system.schedule('Test status Check', sch, batchvar);
        Test.stopTest();
    }
}