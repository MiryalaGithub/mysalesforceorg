trigger ActContDescrRatingTrigger on Account (After insert, After Update) {
    if(trigger.isAfter){
        if(Trigger.isInsert || Trigger.isUpdate){
            ActContDescrRating handler = new ActContDescrRating();
    handler.updaterecord(Trigger.New);
        }
    }
    
    

}