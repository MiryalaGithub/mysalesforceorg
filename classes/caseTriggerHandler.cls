public class caseTriggerHandler {
    public void onDelete(Map<ID,Case> caseMap){
        List< case> lstcase = new List<Case>();
        lstcase = [select id,description from case where id in:caseMap.keySet()];
        for(Case cas:lstcase){
            cas.description = 'This record is restored from recyling bin';
           
        }
        update lstcase;
        
    }

}