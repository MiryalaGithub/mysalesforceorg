@isTest
public class CROwnerNameUpdateTest {
@isTest
    public static void methodforrecord(){
        Contact c =  new Contact();
        c.LastName ='Kouslaya';
        c.FirstName ='Supraja';
        insert c;
        system.debug(c);
        Contact_Relationship__c  Cr= new Contact_Relationship__c();
        Cr.Name='Kolvan';
        Cr.Contact__c = c.Id;
        insert Cr;
    }

}