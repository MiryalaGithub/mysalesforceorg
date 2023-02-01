Global with Sharing class SchedulerForBatchApex7AM implements Schedulable {
    global void execute(SchedulableContext sc){ 
         AccountBlngAdressFromContactAt7am obj = new AccountBlngAdressFromContactAt7am();
         Database.executeBatch(obj,150);
    }
}