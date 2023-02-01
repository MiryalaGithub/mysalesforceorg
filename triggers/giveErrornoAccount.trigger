trigger giveErrornoAccount on contact(before delete){
    for(Contact conObj: trigger.old){
        if(conObj.AccountId == null){
            
        }
    }
}