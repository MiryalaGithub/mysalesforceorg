public class accountIdwithContactFieldMap { 
    public static void methodMap(List<Contact> ContList){
        Map<Id,String> AccConMap = new Map<Id,String>();
        for(Contact conObj:ContList){
            AccConMap.put(conObj.AccountId,conObj.Update_Checking__c);
        }
        System.debug(AccConMap.Keyset());
        List<Account> AccList =[select Id,Name,Update_Checking__c from Account where Id IN:AccConMap.Keyset()];
        for(Account acObj:AccList){
            if(AccConMap.containsKey(acObj.Id)){
                acObj.Update_Checking__c =AccConMap.get(acObj.Id);
            }
        }
        update AccList;
    }
}