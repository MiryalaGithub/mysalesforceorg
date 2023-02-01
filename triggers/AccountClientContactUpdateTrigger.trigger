trigger AccountClientContactUpdateTrigger on Opportunity (after Update) {
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
            AccountClientContactUpdate handler = new AccountClientContactUpdate();
                handler.UpdateAccountClientContact(Trigger.New,Trigger.OldMap);
        }
    }

}