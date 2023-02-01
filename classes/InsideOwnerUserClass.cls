public class InsideOwnerUserClass {
    public void UpdateContactOwner(List<Contact> Cont){
	String idd= Cont[0].Id;
     Contact[] contArray=[select Id,Account.InsideOwner__c from contact where Id=:idd ];
    system.debug('From InsideOWNERCLASS===='+contArray[0].Account.InsideOwner__c);
    List<Contact> listAcc= new List<Contact>();
    for(Contact contactd:Cont){
        //contactd.OwnerId=contArray[0].Account.InsideOwner__c;
        Contact con = new Contact();
        con.Id = contactd.Id;
        con.OwnerId=contArray[0].Account.InsideOwner__c;
        listAcc.add(con);
    }
  
    
    update listAcc;
    }
}