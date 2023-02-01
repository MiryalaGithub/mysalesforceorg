@isTest
public class ContactMasterHandlerTest {
@isTest
    public static void createRecordTest(){
        Contact c = new Contact();
        c.LastName = 'Vikram';
        c.Contact_Relationship__c= true;
       insert c;
        system.debug(c);
        
    }
}