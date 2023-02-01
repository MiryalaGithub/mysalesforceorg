@isTest
public class AccountClientContactUpdateTest {
@isTest
    public static void insertContact(){
        Account a = new Account();
        a.Name = 'Self';
        a.Client_Contact__c ='Acess';
        insert a;
        System.debug(a);
        Opportunity op =new Opportunity();
        op.Name='Depend';
        op.CloseDate = system.today();
        op.StageName ='Prospecting';
        op.AccountId =a.id;
        op.Client_Contact__c='No Acess';
        insert op;
        system.debug(op);
        Opportunity obj =[select id, Name,Client_Contact__c from Opportunity Limit 1];
        Test.startTest();
        obj.Client_Contact__c ='Kolvan';
        update obj;
        system.debug(obj);
        Test.stopTest();
        //system.assertEquals(a.Client_Contact__c,'Kolvan');
 
        
    }

}