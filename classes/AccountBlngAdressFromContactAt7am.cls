Global class AccountBlngAdressFromContactAt7am implements Database.Batchable<sObject>{
    Global Database.QueryLocator start(Database.BatchableContext BC){
        String query = 'Select Id,MailingCity,MailingCountry,MailingState,Account.BillingCity,Account.BillingCountry,Account.BillingState from Contact Where MailingCity!=null AND MailingCountry!=null AND MailingState!=null';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Contact> ListofUpdatedCon) {
       List<Contact> ContList = new List<Contact>();
        for(Contact conObj:ListofUpdatedCon){
             Contact cont = new Contact();
            if(conObj.MailingCity!=conObj.Account.BillingCity && cont.MailingCountry!=conObj.Account.BillingCountry && cont.MailingState!=conObj.Account.BillingState 
              ){
                cont.Id = conObj.Id;
                cont.MailingCity=conObj.Account.BillingCity;
                cont.MailingCountry=conObj.Account.BillingCountry;
                cont.MailingState=conObj.Account.BillingState;
                ContList.add(cont);
            }
        }
        update ContList;
}
    global void finish(Database.BatchableContext BC){
       system.debug('Batch Apex Completed Sucessfully');
        
    }
    
}