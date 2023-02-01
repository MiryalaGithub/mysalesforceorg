public class TaskOnOptyAccount {
    public static void createTaskOnAccount(List<Task> TaskList){
        List<Opportunity> OpptyList = new List<Opportunity>();
        set<Id> TaskId = new set<Id>();
        for(Task taskObj:TaskList){
            if(taskObj.WhoId!=null&& String.valueOf(taskObj.WhoId).startsWith('0065')){
                TaskId.add(taskObj.WhoId);
            }
        }
        List<Opportunity> OptyList =[select Id,AccountId,Account.Name from Opportunity where id=:TaskId];
        List<Task> ActTask = new  List<Task>();
        for(Opportunity opObj:OptyList){
            if(opObj.StageName!='Closed Won' && opObj.StageName!='Closed Lost'){
                opObj.StageName ='Closed Won';
                OptyList.add(opObj);
                Task t = new Task();
            t.WhoId =opObj.AccountId;
            t.WhatId =opObj.Id;
            t.Subject ='Hi pusparaj';
            t.OwnerId =opObj.CreatedById;
             ActTask.add(t);
            }
            
        } Insert ActTask;
          Update OptyList;
            
            }
        }