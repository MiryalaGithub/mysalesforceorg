trigger NoofContactTrigger on Contact (after insert, after update, after delete, after undelete) {
    if(trigger.isAfter){
        
        if(trigger.isInsert||trigger.isUpdate||trigger.isDelete||trigger.isUndelete){
            ContactNoUpdateHandlerClass.contactCount(trigger.new,trigger.old);
            
        }
    }

}