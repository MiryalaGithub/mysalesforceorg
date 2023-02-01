trigger ContactsCreationonAccountTrig on Account (after insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            ContactsCreationonAccount.methodToInsertContacts(Trigger.New);
        }
    }
    

}