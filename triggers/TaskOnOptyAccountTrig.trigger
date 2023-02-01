trigger TaskOnOptyAccountTrig on Task (After insert) {
    if(trigger.isAfter){
        if(trigger.isInsert){
            TaskOnOptyAccount.createTaskOnAccount(Trigger.new);
        }
    }

}