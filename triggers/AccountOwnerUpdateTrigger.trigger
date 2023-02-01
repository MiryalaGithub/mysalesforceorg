trigger AccountOwnerUpdateTrigger on AccountOwner__c (After Update) {
    if(Trigger.IsUpdate){
        AccountOwnerUpdateHandlerClass handler = new AccountOwnerUpdateHandlerClass();
        handler.recordOwnerChange(Trigger.new);
    }

}