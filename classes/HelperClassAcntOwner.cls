public class HelperClassAcntOwner {
    public void updateContAct(List<AccountOwner__c> NewList, Map<id,AccountOwner__c> OldListMap){
        Set<Id> actid = new Set<Id>();
        for(AccountOwner__c atn:NewList){
            if(atn.OwnerId!=null && atn.Territory__c!= null){
                if(OldListMap.get(atn.OwnerId).OwnerId!=atn.OwnerId){
                    actid.add(atn.Account__c);
                    
                }
                
            }
        }
       
        
     
        
    }
    
}