trigger TriggerOpty on Opportunity (after insert) {
    
    if(Trigger.isInsert){
       ClassforOpty.UpdateOpty(trigger.new);
    }
    
    
}