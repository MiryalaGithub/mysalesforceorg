public class AccountContactCreateClass {
    public void createcontact(List<Account> Actlist){
        List<Contact> ContList = new   List<Contact>();
        for(Account accObj:Actlist){
            Contact c = new Contact();
            c.LastName = accObj.Name;
            c.Phone = accObj.Phone;
            c.AccountId =accObj.Id;
            ContList.add(c);
        }
        Insert ContList;
    }

}