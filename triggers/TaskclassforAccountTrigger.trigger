trigger TaskclassforAccountTrigger on Task (after insert) {
    if(Trigger.isInsert){
        if(TaskclassforAccount.isFirstTime){
            TaskclassforAccount.isFirstTime =false;
           System.debug('Trigger called');
        TaskclassforAccount tas = new TaskclassforAccount();

        tas.createTaskonAccount(Trigger.New);
        }
        
    }

}