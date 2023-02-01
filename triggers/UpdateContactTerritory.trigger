trigger UpdateContactTerritory on Contact (before update) {
    if(Trigger.IsUpdate){
        UpdateContactTerritoryHandlerClass handler = new UpdateContactTerritoryHandlerClass();
        handler.updateTerritory(Trigger.New,Trigger.oldMap);
    }

}