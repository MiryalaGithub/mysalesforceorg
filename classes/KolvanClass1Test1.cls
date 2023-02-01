@isTest
public class KolvanClass1Test1 {
   @isTest  static void check(){
       KolvanClass1 k = new KolvanClass1();
       k.create();
      Integer count  =[select count() from Account where name = 'CASE100'];
       system.assertEquals(1, count);
        
    }

}