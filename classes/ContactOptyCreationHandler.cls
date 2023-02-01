public class ContactOptyCreationHandler {
    public  void CreateOppty(List<Contact> Contlist){
        List<Opportunity> OpptyList = new List<Opportunity>();
        for(Contact conObj:Contlist){
            if(conObj.AccountId!=null){
                Opportunity Opty = new Opportunity();
                Opty.Name =conObj.LastName;
                Opty.CloseDate= system.today();
                Opty.StageName='Prospecting';
                Opty.AccountId =conObj.AccountId;
                OpptyList.add(Opty);
            }
        }
        insert OpptyList;
        
            
  
        }
    }