trigger CustomOwner on Account (before insert, before update) {

  for(Account acc :Trigger.new){
       if(acc.Inside_Owner__c ==null){
          acc.Inside_Owner__c =  'TOM MATHEW';
       
       }
  
  
  }
      
}