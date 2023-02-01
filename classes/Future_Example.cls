public class Future_Example {
    @future
    public static void callMe(){
        system.debug('Call me one');
             system.debug('Call me Two');
        
        system.debug('Call me Three');
    }
    @future
    public static void invoke(){
        system.debug('Invoke one');
        system.debug('Invoke Two');
        system.debug('Invoke Three');
    }
   
    public void show(){
        system.debug('Show one');
        system.debug('Show two');
        callMe();
        system.debug('Show three');
        system.debug('Show four ');
        invoke();
        system.debug('Show five ');
        system.debug('Show six  ');
    }

}