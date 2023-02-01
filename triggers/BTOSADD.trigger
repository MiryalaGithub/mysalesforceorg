trigger BTOSADD on Account (before insert){
    for(Account a :trigger.new){
        if(a.BillingStreet!= null){
            a.ShippingStreet = a.BillingStreet;
        }
        if(a.BillingCity!= null){
            a.ShippingCity = a.BillingCity;
        }
        if(a.BillingCountry!=null){
            a.ShippingCountry = a.BillingCountry;
        }
        if(a.BillingPostalCode!=null){
            a.ShippingPostalCode = a.BillingPostalCode;
        }
    }
    
    
    

}