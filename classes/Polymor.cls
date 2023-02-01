public class Polymor {
    public void walk()
    {
        system.debug('With no data type');
    }
    public void walk(Integer speed){
        system.debug('With integer parameter:'+speed);
    }
    public void walk(String name){
        system.debug('With String parameter:'+name);
    }
    public void walk(Integer speed, String name){
        system.debug('With integer and String parameter' +speed +name);
    }
}