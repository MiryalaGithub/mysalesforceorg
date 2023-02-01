public class ClassforOpty {
    public static void UpdateOpty(List<Opportunity> Oppty){
      
        Account acc= [select id,name, InsideOwner__c from Account where InsideOwner__r.Name  = 'True'];
            for( Opportunity opt:Oppty){
                opt.AccountId = acc.Id;
                opt.OwnerId = acc.InsideOwner__c;
                Oppty.add(opt);
                
            } 
        update Oppty;
        }
    
    
        }