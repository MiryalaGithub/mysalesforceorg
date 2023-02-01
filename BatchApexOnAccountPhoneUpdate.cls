Global class BatchApexOnAccountPhoneUpdate implements Database.Batchable<sobject>{
    
    global Database.QueryLocator start(Database.BatchableContext BC){
        String query ='select id, name, Rating from Account where Rating =null';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Account> accList) {
        for(Account aObj:accList){
            aObj.Rating ='Warm';
        }
        try{
            update accList;
        }catch(Exception e) {
            System.debug(e);
        }

}
    global void finish(Database.BatchableContext BC) {
        // execute any post-processing operations
  }
}