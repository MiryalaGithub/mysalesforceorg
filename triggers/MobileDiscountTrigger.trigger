trigger MobileDiscountTrigger on Mobile__c (before insert, before update) {
    if(Trigger.isInsert == true && Trigger.IsUpdate)
      {
         // MobileDiscountClass.DiscountOffer(Trigger.New);
      }
}