public class DMLAccount {
     
    Public void UpdateRecord(){
         List<Opportunity> opp = new List<Opportunity>();
        for(Opportunity p:opp){
            if(p.OwnerId == null){
                List<Account> act = [select Inside_Owner__c from Account];
                //select Inside_Owner__c from acct where acc.id =p.AccountId
                p.OwnerId = act[0].Inside_Owner__c;
                
            }
            
        }
        
        
    }
    
    
}