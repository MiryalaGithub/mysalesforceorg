public class ApexTransaction {
    public static void insertAccountContact(String AccName, String Lastname){
        Account acc= new  Account();
        acc.name =AccName;
        insert acc;
        Contact c = new Contact();
        c.lastname = Lastname;
        c.AccountId= acc.Id;
        insert c;
        
    }

}