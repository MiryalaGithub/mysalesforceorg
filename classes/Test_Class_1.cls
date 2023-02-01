@isTest
public class Test_Class_1 {
    @isTest
    static void testMe(){
        Example_Test_1 et = new Example_Test_1();
        et.invoke();
        system.assertEquals('Samkiran', et.name);
        system.assertEquals('Hyd', et.city);
    }

}