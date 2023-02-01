trigger BTSADRESS on Account (before insert) {
    if(Trigger.isInsert){
        BillingtoShipping BSC = new BillingtoShipping();
        BSC.Updatefeild(Trigger.new);
    }
    
    
    

}