public class AccountClientContactUpdate {
    public void UpdateAccountClientContact( List<Opportunity> OppList, Map<Id,Opportunity> Oldmap){
        set<id> CrntOptId = new set<id>();
        for(Opportunity obj:OppList){
            if(obj.Client_Contact__c!=null&& obj.AccountId!=null){
                if(obj.Client_Contact__c!= Oldmap.get(obj.Id).Client_Contact__c){
                    CrntOptId.add(obj.Id);
                }
                
            }
        }
        
        List<Account> ActList = new List<Account>();
        List<Opportunity> getOppList=[select Id,AccountId,Client_Contact__c,Account.Client_Contact__c from Opportunity where Id=:CrntOptId];
        if(getOppList.size()>0){
            for(Opportunity obj2:getOppList){
                if(obj2.Client_Contact__c!=obj2.Account.Client_Contact__c){
                    Account accobj = new Account();
                    accobj.Id =obj2.AccountId;
                    accobj.Client_Contact__c=obj2.Client_Contact__c;
                    ActList.add(accobj);
                }
            }
        }
        if(ActList.size()>0){
            update ActList;
        }
        
        
    }

}