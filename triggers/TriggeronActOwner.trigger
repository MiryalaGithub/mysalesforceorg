trigger TriggeronActOwner on AccountOwner__c (after Update) {
    if(Trigger.isUpdate){
        HelperClassAcntOwner  handle = new HelperClassAcntOwner();
        handle.updateContAct(Trigger.new, Trigger.oldMap);
    }

}