trigger ContactOptyCreationTrigr on Contact (after insert) {
    if(trigger.isAfter){
        if(trigger.isInsert){
            ContactOptyCreationHandler handler = new ContactOptyCreationHandler();
            handler.CreateOppty(Trigger.new);
        }
    }

}