@isTest
public class accountIdwithContactFieldMapTest {
@isTest
    public static void testrecord(){
        Account a = new Account();
        a.Name = 'Sundrapuri';
        insert a;
        Contact c= new Contact();
        c.LastName ='Kaldhamam';
        c.AccountId = a.Id;
        Insert c;
    }

}