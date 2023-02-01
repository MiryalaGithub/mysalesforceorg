trigger AccountCreationMaitoAdminTrig on Account (After insert) {
    if(Trigger.IsAfter){
        if(Trigger.IsBefore){
            AccountCreationMaitoAdmin.sentEmail(Trigger.New);
        }
    }

}