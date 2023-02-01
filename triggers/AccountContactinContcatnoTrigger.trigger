trigger AccountContactinContcatnoTrigger on Customer__c (after insert) {
    if(Trigger.IsInsert){
        AccountContactinContcatno.contactsToCreate(Trigger.New);
    }
    

}