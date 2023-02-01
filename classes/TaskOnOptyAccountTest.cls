@isTest
public class TaskOnOptyAccountTest {
@isTest
    public static void methodforTestRecord(){
       	Account a = new Account();
        a.Name = 'Shabaari';
        insert a;
        Opportunity oops = new Opportunity();
        oops.AccountId = a.Id;
        oops.Name='Train';
        oops.StageName='Closed Won';
        oops.CloseDate=system.today();
        insert oops;
        task t = new task();
        t.WhoId =a.Id;
        t.WhatId = oops.Id;
        t.Subject ='Ping Me';
        insert t;
        
        
    }

}