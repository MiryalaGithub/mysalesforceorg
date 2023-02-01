public class UpdateOwnerOnAccountClass { 
    //  OwnerList to Collect  updated account records
    //  OldOwnerMap to  compare the field values whether record is updated or not 
     Public void updateOwner(List<Account> OwnerList,Map<Id,Account> OldOwnerMap){
         Set<Id> accntidtoUpdate = new Set<Id>();
         // This set is to collect updated account Ids
         Map<Id,List<AccountOwner__c>> accountOwnerMap =new Map<Id,List<AccountOwner__c>>();
         // It is to collect list of Account Owners
         // To check each account whether the value is updated or not,
         // if updated add that update accountId tp to set  variable
         for(Account act:OwnerList){
             if(OldOwnerMap.get(act.Id).Territory__c!=act.Territory__c){
                 accntidtoUpdate.add(act.Id); }                           
             }
         // Here we are querying records only which territory field is update and
         // Filtering records owners based on Account 
         for(AccountOwner__c accOwner:[select Id,OwnerId,Territory__c,Account__c from 
                                            AccountOwner__c where Account__c=:accntidtoUpdate]){
                  if(accountOwnerMap.containsKey(accOwner.Account__c) &&accountOwnerMap.get(accOwner.Account__c)!= null ){
                      List<AccountOwner__c> OwnerInstance = accountOwnerMap.get(accOwner.Account__c);
                      OwnerInstance.add(accOwner);
                      accountOwnerMap.put(accOwner.Account__c,OwnerInstance);
                  }
                  else {
                      accountOwnerMap.put(accOwner.Account__c, new List<AccountOwner__c> {accOwner});
                  }
              }
         for(Account a:OwnerList){
             if( accountOwnerMap.containsKey(a.id)){ 
                 
                 for(AccountOwner__c acOwnr:accountOwnerMap.get(a.id)){
                     if(acOwnr.Territory__c==a.Territory__c){
                         a.OwnerId = acOwnr.OwnerId;}
                                             }
                                                          }
                                }
         
         
     }
    
}