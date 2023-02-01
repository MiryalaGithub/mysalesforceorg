trigger ContactTerritoryTrigger on Contact (before insert, before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert && Trigger.isUpdate){
            ContactTerritoyUpdate handle = new ContactTerritoyUpdate();
            handle.methodforupdate(Trigger.new);
        }
    }
    
    
    

}