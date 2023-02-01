trigger UpdateOwnerOnAccountTrigger on Account (before update) {
    
    if(Trigger.IsUpdate){
        UpdateOwnerOnAccountClass handlerclass = new UpdateOwnerOnAccountClass();
        handlerclass.updateOwner(Trigger.new,Trigger.OldMap);  // To check the feild we are using old map
    }

        
  
    
    
     

}