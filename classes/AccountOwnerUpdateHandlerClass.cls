public class AccountOwnerUpdateHandlerClass {
    public void  recordOwnerChange(List<AccountOwner__c>ActOwnerList){
        // To collect the AccountOwner Id to whenever Ownerfield is changed
       set<Id> ActOwnerId =new  set<Id>();
        for(AccountOwner__c awn:ActOwnerList){
            if(awn.Territory__c!= null && awn.Account__c != null){
                ActOwnerId.add(awn.Account__c);
            }
        }
        AccountOwner__c  an = new AccountOwner__c(); 
        List<Account> getaccounts =[select id, name,Territory__c,OwnerId from Account where id =:ActOwnerId];
        for(Account ab:getaccounts){
            if(ab.Territory__c==an.Territory__c && ab.id==an.Account__c){
                ab.OwnerId =an.OwnerId;
            }
        }
        update getaccounts;
                }
}