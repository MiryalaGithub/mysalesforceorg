@isTest 
public class TestClassTaskclassforAccount {
    @isTest 
    public  static void checkforTask(){
        Account a1 =  New Account();
        a1.Name = 'Kaju Burfi';
        Insert a1;
        system.debug('Account Created:'+a1);
        Account insertedAccount = [select Name,Id,OwnerId from Account where Id=:a1.Id];
         system.debug('Account CREDRESDS:'+insertedAccount.Id);
        system.debug('Account CREDRESDS:'+insertedAccount.OwnerId);
        Opportunity oops = new Opportunity();
        oops.Name = 'Bug';
        oops.CloseDate = Date.today();
        oops.StageName = 'Prospecting';
        oops.AccountId = a1.Id;
        insert oops;
        Opportunity oop = [select Name,CloseDate,StageName,AccountId,OwnerId from Opportunity where Id=:oops.Id];
        System.debug('Opportunity created:'+oops.AccountId);
            Task t = new Task();
        System.debug('OOPA ID:'+oop.OwnerId);
            t.WhatId =oops.Id;
          t.Subject = 'Test Subject';
           t.Description = 'This a Test';
        insert t;
        System.debug('Task Created:'+t);
          Task t1 = new Task();
           t1.WhatId =insertedAccount.Id;
           t1.OwnerId = insertedAccount.OwnerId;
           t1.ActivityDate = Date.today();
          t1.Subject = 'Test Subject';
           t1.Description = 'This a Test';
        Test.startTest();
           Insert t1;
        system.debug('Task on Account Created:'+t1);
        Test.stopTest();
        
    }
}