public class TaskclassforAccount {
    public static Boolean isFirstTime = true;
    Public void createTaskonAccount(List<Task> listTask){
        system.debug('Opportun :'+listTask);
        List<Task> InsertTaskAccount =  new List<Task>();
        List<Opportunity> Oppty = new List<Opportunity>();
        set<Id> oppwhatid = new set<Id>();
        for(Task tsk:listTask){
            if(tsk.WhatId!=null){ 
                oppwhatid.add(tsk.WhatId);
                
            }
            
        }
        if(oppwhatid.size()>0){
            Oppty = [Select Id,AccountId from opportunity where Id IN:oppwhatid];
        }
        
        Map<Id,Id> OpptyActId= new Map<Id,Id>();
        for(Opportunity op:Oppty){
            OpptyActId.put(op.Id,op.AccountId);
        }
        //List<Account> act = [Select Id, Name  from Account where Id IN:OpptyActId];
        for(Task t1 :listTask){
            Task t = new Task();
            
            if(OpptyActId.size()>0 && OpptyActId.containsKey(t1.Whatid)){
                t.WhatId = OpptyActId.get(t1.Whatid);
            }
            
            t.OwnerId = t1.OwnerId;
            t.ActivityDate =Date.today();
            t.Subject = 'This task is created automatically from opportunity';
            InsertTaskAccount.add(t);
        }
        if(InsertTaskAccount.size()>0){
            Insert InsertTaskAccount;
        }
        
        
    }
}