public class ContactsCreationonAccount {
    public static void methodToInsertContacts(List<Account> Acctlist){
        List<Contact> ContList = new List<Contact>();
        Map<id,Decimal> MapAct =  new  Map<id,Decimal>();
        for(Account accobj:Acctlist){
            MapAct.put(accobj.Id,accobj.Number_of_Locations__c);
                }
        system.debug('Code enter lin 8');
        if(MapAct.size()>0 && MapAct!=null){
            for(Id  acId:MapAct.keyset()){
                system.debug('Code Entered 10 th line');
                 system.debug('AccountId'+acId);
                for(Integer i=0;i<MapAct.get(acId);i++){
                    Contact  ConObj = new Contact();
                    ConObj.LastName = 'Contact'+i;
                    ConObj.AccountId= acId;
                    ContList.add(ConObj);
                    
                }
                
            }
        }
        if(ContList.size()>0 && ContList!=null){
            insert ContList;
            system.debug('Contacts inserted');
        }
        
         
    }

}