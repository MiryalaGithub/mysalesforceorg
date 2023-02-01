public class ContactDemoClassforTrigger {
    public static void AddContact (list<Account> myAccountlist){
        list<contact> newContact = new list<Contact>();
        for( Account a :myAccountlist){
            contact c = new contact() ;
            c.id = a.id;
            c.lastname = 'Krishna';
            c.firstname = 'Sai';
            newContact.add(c);
        }
        
    }

}