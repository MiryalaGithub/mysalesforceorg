trigger BeforeContact on Contact (before insert, before update) {
    
    for(Contact con : Trigger.new){
        if(Trigger.isInsert){
            con.Description= 'newly inserted';
        }
        if(Trigger.isUpdate) {
            con.Description= 'Recently Updated';
        }
    

}
}