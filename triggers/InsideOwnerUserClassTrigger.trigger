trigger InsideOwnerUserClassTrigger on Contact (after insert) {
    if(Trigger.isInsert){
        System.debug('TRIGGER CALLED===');
        InsideOwnerUserClass insideOwner = new InsideOwnerUserClass();
        insideOwner.UpdateContactOwner(Trigger.new);
    }

}