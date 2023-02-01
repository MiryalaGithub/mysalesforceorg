public class TaskExmaple {
public static void createTaskforOpp(List<Opportunity> oppList) {

    List<Task> taskList = new List<Task>();
    For(Opportunity opp : oppList) {
      Task newTask = new Task(
           WhatId = opp.Id,
           OwnerId = opp.OwnerId,
           ActivityDate = Date.today(),
          Subject = 'Test Subject',
           Description = 'This a Test'
       );
        taskList.add(newTask);

    
        }
        insert taskList;
    system.debug('Task List:'+taskList);
    }
    }