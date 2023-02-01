trigger ContactRelationshipMasterTrigger on Contact_Relationship__c (before insert) {
    if(trigger.isBefore){
        if(trigger.isInsert){
            CROwnerNameUpdate handlerclass = new CROwnerNameUpdate();
            handlerclass.updatemethod(Trigger.new);
        }
    }

}