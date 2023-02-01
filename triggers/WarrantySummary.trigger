trigger WarrantySummary on Case (before insert) {
    for (Case myCase: Trigger.new){
        Date purchaseDate             = mycase.Product_Purchase_Date__c;
        DateTime CreatedDate          =mycase.createdDate;
        Integer warrantyDays          = mycase.Product_Total_Warranty_Days__c.intvalue();
        Decimal warrantyPercentage    = purchaseDate.daysBetween(Date.today())/warrantyDays;
        Boolean hasAnExentededWarranty= mycase.Product_Has_Extended_Warranty__c;
        String endingStatement        ='Have a nice day';
        
    }

}