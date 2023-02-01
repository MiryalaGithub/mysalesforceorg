trigger ContOptyCreate on Contact (after insert) {
    if(Trigger.isAfter){
        ContactOptyClass handler = new ContactOptyClass();
        handler.getcontact(Trigger.new);
    }

}