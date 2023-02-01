trigger UpdateTriggeronOpty on Opportunity (after insert) {
    System.debug('Trigger Called');
    if(Trigger.isInsert || Trigger.isAfter){
        Set<Id> accSet = new Set<Id>();
        List<Account> accList = new List<Account>();
        List<Opportunity> oppList = new List<Opportunity>();
        
        for(Opportunity opp: Trigger.new){
            accSet.add(opp.AccountId);
            System.debug('Account IDDDD'+opp.AccountId);
        }
        Map<Id,Account> mapAccounts = new Map<Id,Account>([SELECT Id,Inside_Owner__c from Account  where Id IN :accSet]);  
        for(Opportunity opp: Trigger.new){
            Account acc = mapAccounts.get(opp.AccountId);
            System.debug('Account IDDDD'+opp.AccountId);
            //opp.Description= acc.Inside_Owner__c;
            //oppList.add(opp);
            System.debug('ACCCCCC Called'+acc.Inside_Owner__c);
        }
        //Update oppList;
    }

}