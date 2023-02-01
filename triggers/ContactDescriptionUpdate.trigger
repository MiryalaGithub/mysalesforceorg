trigger ContactDescriptionUpdate on Contact (before insert, before update) {
    for(Contact con : Trigger.new)
    {
        if(trigger.isinsert){
            con.description = ' Your contact is Inserted Sucessfully';
            
        }else if(trigger.isupdate){
            con.description = ' Your contact updated Sucessfully';
        }
            
    }

}