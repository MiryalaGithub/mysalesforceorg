public class ContactNoUpdateHandlerClass {
    public static void contactCount(List<Contact> listnew, List<Contact> listold){
        Set<Id> AcctId = new Set<Id>();
        if(listnew!=null){
           for(Contact c:listnew ){
            if(c.AccountId!= null){
                AcctId.add(c.AccountId);   
            }
        } 
        }
        if(listold!=null){
           for(Contact c:listold){
            if(c.AccountId!= null){
                AcctId.add(c.AccountId);
            }
        } 
        }
        List<Account> Act = [select Id,No_of_Contacts__c,(select Id from contacts) from Account where Id IN:AcctId];
        if(!Act.isEmpty()){
            for(Account ac:Act){
                ac.No_of_Contacts__c= ac.Contacts.size();
                
            }
            Update Act;
        }
    }

}