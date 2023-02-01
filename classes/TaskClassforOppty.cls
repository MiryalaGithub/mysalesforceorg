public class TaskClassforOppty {
    
    public  static void AddTasktoAccount(List<Opportunity> oppList){
        
        List<Task> taskList = new List<Task>();
        Opportunity oppty = [SELECT Id, Name,Account.Id, (SELECT Id, Subject FROM Tasks) FROM Opportunity WHERE CreatedDate = TODAY];
        for(Opportunity opp : oppList) {
            //if(Whatid =opp.Id){
            //  Task newTask = new Task(
            // WhatId = opp.Id,
            // OwnerId = opp.OwnerId,
            // ActivityDate = Date.today(),
            //Subject = 'Test Subject',
            // Description = 'This a Test');
        }
        
        
        //taskList.add(newTask);
        
        
    }
    //insert taskList;
    
}