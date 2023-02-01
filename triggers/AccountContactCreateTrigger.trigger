trigger AccountContactCreateTrigger on Account (After insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            AccountContactCreateClass handler = new AccountContactCreateClass();
            handler.createcontact(Trigger.new);
        }
    }

}