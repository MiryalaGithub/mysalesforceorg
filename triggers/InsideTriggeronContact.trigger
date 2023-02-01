trigger InsideTriggeronContact on Contact (after insert) {
    Contact[] contArray=[select Id,Account.InsideOwner__c from contact where Id in :Trigger.new ];
    system.debug('cinnnc===='+contArray[0].Account.InsideOwner__c);
    List<Contact> listAcc= new List<Contact>();
    for(Contact contactd:Trigger.new){
        //contactd.OwnerId=contArray[0].Account.InsideOwner__c;
        Contact con = new Contact();
        con.Id = contactd.Id;
        con.OwnerId=contArray[0].Account.InsideOwner__c;
        listAcc.add(con);
    }
  
    
    update listAcc;
}