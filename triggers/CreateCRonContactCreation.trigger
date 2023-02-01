trigger CreateCRonContactCreation on Contact (after insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            ContactMasterHandler handler= new ContactMasterHandler();
            handler.createContactRelationshipByContact(Trigger.New);
        }
    }

}