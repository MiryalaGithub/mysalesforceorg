public class AccountBatchScheduleClass implements Schedulable {
    public void execute(SchedulableContext SC){
        TestDemoBatch  Obj = new TestDemoBatch();
        Database.executeBatch(Obj,100);
    }

}