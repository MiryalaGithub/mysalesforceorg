Public Class TestDemoBatch implements Database.Batchable<sObject>{
    
    Public Database.QueryLocator start(Database.BatchableContext bc){
        return  Database.getQueryLocator('Select id, name  from Account');
    }
    
    public void execute(Database.BatchableContext bc, List<Account> sublistFromStartMethod ){
        for(Account Acc:sublistFromStartMethod){
            Acc.name = Acc.name;
        }
        update sublistFromStartMethod;
    }
    public void finish(Database.BatchableContext bc){
        system.debug('@@ Batch completed');
    }
    
    
    
    
   
    
    
    
    
    
    
    
    
    
}