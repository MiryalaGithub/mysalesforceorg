public class TodayTask {
    public TodayTask(){
        takeshower();
        haveBreakfast();
        carServicing();
        mWW();
    }
    
    public static void takeshower(){
        system.debug('I am taking shower');
    }
    public static void haveBreakfast(){
        system.debug('I am having breakfast');
    }
    @future
    public static void carServicing(){
        system.debug('Car is being repaired');
    }
    public static void mWW(){
        system.debug('Watching movie with wife');
    }
    
}