@isTest
public class ContactsCreationonAccountTest {
@isTest
    public static void testrecord(){
        Account accobj= new Account();
        accobj.Name='Kantara';
        accobj.Number_of_Locations__c= 3;
        insert accobj;
        
        
    }

}