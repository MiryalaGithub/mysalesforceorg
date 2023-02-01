public class UpdateContactTerritoryHandlerClass {
    
    public void updateTerritory(List<Contact> InsUpdatedTerritorty, Map<Id,Contact> OldContactMap){
        set<Id> AccounIds = new set<Id>();
         Map<Id,List<AccountOwner__c>> contactOwnerMap =new Map<Id,List<AccountOwner__c>>();
        for(Contact con:InsUpdatedTerritorty){
            if(con.AccountId!=null && con.Territory__c!=null){
                if(OldContactMap.get(con.Id).Territory__c!=con.Territory__c){
                    AccounIds.add(con.AccountId);                           }
                                                             }
                                              }
        for(AccountOwner__c accOwner:[select Id,OwnerId,Territory__c,Account__c from 
                                               AccountOwner__c where Account__c=:AccounIds]){
                                                   if(contactOwnerMap.containsKey(accOwner.Account__c)&&
                                                      contactOwnerMap.get(accOwner.Account__c)!= null){
                                                       List<AccountOwner__c> OwnerInstance = contactOwnerMap.get(accOwner.Account__c);
                                                       OwnerInstance.add(accOwner);
                                                         contactOwnerMap.put(accOwner.Account__c,OwnerInstance);
                                                                                                        }
                                                   else {
                                       contactOwnerMap.put(accOwner.Account__c, new List<AccountOwner__c> {accOwner});
                                                                                             }
                                                                                              }
        for(Contact c:InsUpdatedTerritorty){
            if(contactOwnerMap.containsKey(c.AccountId)){
                for(AccountOwner__c ConOwnr:contactOwnerMap.get(c.AccountId)){
                    if(c.Territory__c ==ConOwnr.Territory__c){
                     c.OwnerId = ConOwnr.OwnerId;            }
                                                                             }
                
                                                         } 
                
            }
                                              }   
                 
}