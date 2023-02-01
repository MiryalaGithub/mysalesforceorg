public class ContactTerritoyUpdate {
    public  void methodforupdate(List<Contact> ConList){
        Set<Id> ContAccountId = new Set<Id>();
        for(Contact con:ConList){
            if(con.AccountId!=null && con.Territory__c== null){
                ContAccountId.add(con.AccountId);
            }
        }
         List <AccountOwner__c> Act = [select Id,OwnerId,Territory__c, Account__c from AccountOwner__c where Account__c=:ContAccountId];
  for( Contact cu :ConList){
      
          for(AccountOwner__c ace:Act){
              if(cu.Territory__c==ace.Territory__c){
                  ace.OwnerId = cu.OwnerId;
              }
          }
          
      }
	      
        
    }

    }