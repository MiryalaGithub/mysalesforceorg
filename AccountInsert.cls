public class AccountInsert {
    Public Void InsertAccount(){
        Account Acc = new Account();
         Acc.Name ='KOLVAN';
        insert Acc;
        if(Acc.Id!=null){
            system.debug('Account ID:'+Acc.Id);
            List<Contact> Cnt = new List<Contact>();
            for(Integer i=1;i<=2;i++){
                Contact  Con = new Contact();
            Con.LastName='Krishna'+i;
            Con.AccountId =Acc.Id;
            insert Con;
            }
           
            List<Opportunity> Oppty = new List<Opportunity>();
            for(Integer i =1;i<=5;i++){
                 
             Opportunity OOPS = new Opportunity();              
                
            }
            
            
            
        }
			          
        
        
        
  
        
        
        
        
						 
        
			  
			  
			  }

}