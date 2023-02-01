public class ContactOptyClass {
    Public void getcontact(List<Contact> ContList){
        Set<Id> Contid = new Set<Id>(); 
        for(Contact con:ContList){
            if(Con.AccountId!=null){
                Contid.add(con.AccountId);
            }
        }
        
       List<Account> ActList =[select id, name from Account where id=:Contid];
        system.debug( ActList);
        
        for(Account a:ActList){
            Opportunity  opp = new Opportunity();
            opp.Name ='Kol'+Date.Today();
            opp.StageName ='Prospecting';
            opp.CloseDate = System.today();
            opp.AccountId =a.Id;
            system.debug(opp);
           
        }
        Insert ActList;
    }

}