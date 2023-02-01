public class Lead1 {
    Public void LeadInsert(Integer  maxRecord){
        
        if(maxRecord>0){
            
            for(Integer i =1; i <=maxRecord;i++){
                 Lead L1 = new Lead();
                L1.FirstName = 'SAI'+i;
                L1.Status = 'Open - Not Contacted';
                L1.LastName = 'KRISHNA';
                L1.Company ='NAVALOC';
                insert L1;
                if(L1.Id!= null){
                    system.debug('Record Id:'+L1.Id);
                }
                
            }
            
        }
    }

}