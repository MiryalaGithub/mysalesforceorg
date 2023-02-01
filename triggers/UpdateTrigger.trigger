trigger UpdateTrigger on Account (before insert) {
    
    for(Integer i=0; i<Trigger.new.size(); i++){
        if(trigger.old[i].phone !=trigger.new[i].phone){
            trigger.new[i].description = 'old phone nos is'+trigger.old[i].phone+ 'is replaced with new phone no '+trigger.new[i].phone;
        }
        
    }

}