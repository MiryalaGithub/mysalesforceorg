trigger SalesrepTrigger on Account (before insert, before update) {
    
    for(Account acc:Trigger.new){
        acc.OwnerId = acc.Sales_Rep__c;
    }

}