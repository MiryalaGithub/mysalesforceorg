@isTest
public class BatchApexOnAccountPhoneUpdateTest {
@isTest
    public static void testmethod1(){
        List<Account> AcntList = new List<Account>();
            for(Integer i=0;i<200;i++){
                Account a = new Account(Name ='Account'+i);
                AcntList.add(a);
            }
              Insert AcntList;
        Test.startTest();
        BatchApexOnAccountPhoneUpdate baObj = new BatchApexOnAccountPhoneUpdate();
        Database.executeBatch(baObj);
        Test.stopTest();
            
        }
    }