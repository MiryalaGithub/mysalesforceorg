trigger TaskClassforOpptyTrigger on Opportunity (after insert) {
    if(Trigger.isInsert){
        TaskClassforOppty.AddTasktoAccount(Trigger.new);
    }

}