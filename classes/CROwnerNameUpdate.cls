public class CROwnerNameUpdate {
    public void updatemethod(List<Contact_Relationship__c> c_R_List){
        Map<Id, String> MapIdName = new  Map<Id, String>();
        set<Id>cRid  = new set<Id>();
        for(Contact_Relationship__c obj:c_R_List){
            cRid.add(obj.OwnerId);
        }
        List<user> u=[select Id,Name from user where id IN:cRid];
        for(user List_User:u){
            MapIdName.put(List_User.Id,List_User.Name);
        }
        if(u!=null && u.size()>0){
            for(Contact_Relationship__c ListRec:c_R_List){
                if(ListRec.OwnerId!=null){
                    ListRec.Name=MapIdName.get(ListRec.OwnerId);
                }
                system.debug(ListRec);

            }
            
        }
        
    }

}