public class ActContDescrRating{
    public void updaterecord(List<Account> ActList){
        set<Id> ActIdwithRating = new Set<Id>(); 
        for(Account acObj:ActList){
            if(acObj.Rating =='Hot'||acObj.Rating =='Warm'){
                ActIdwithRating.add(acObj.Id);
            }
            system.debug('test:'+ActIdwithRating);
            
        }
        
      List<Account> UpdateList =[select id,Name,Rating,(select Id, Description from Contacts) from Account where Id=:ActIdwithRating];
        List<Contact> Contlist = new List<Contact>();
        for(Account aObj:UpdateList){
            if(aObj.Rating=='Warm'){
                Contact c = new Contact();
                c.LastName='Warm';
                c.AccountId=aObj.Id;
                Contlist.add(c);
            }

            
        }
        insert Contlist;
        
  
        }
        
                
            }