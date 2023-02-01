@isTest
public class ContactOptyCreationHandlerTest {
@isTest
    public static void methodcreateOppty(){
        Account a = new Account();
        a.Name = 'Tag';
        insert a;
        Contact c = new Contact();
        c.LastName='Identity';
        c.AccountId = a.id;
        insert c;
    }

}