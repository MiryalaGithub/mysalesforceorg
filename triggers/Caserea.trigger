trigger Caserea on Case (before insert) {
    for(Case c :trigger.new){
        if(c.Origin =='Email'){
           c.status = 'New';
             
            c.priority = 'Medium';
           }
        
    }

}