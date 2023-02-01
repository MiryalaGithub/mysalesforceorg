public class ContactHandler {
    Public static void BulkinsertContact(Integer ContactNo){
        List<Contact> lstCont = new List<Contact>();
        if(ContactNo>0){
            for(Integer i=1; i<=ContactNo;i++){
                
                Contact Con = new Contact();
               Con.FirstName = 'SAI'+i;
                Con.LastName = 'Miryala';
                lstCont.Add(Con);
                
            }
              if(!lstCont.isEmpty()){
                Insert lstCont;
                  system.debug(+lstCont);
    
        
    }
        } 
         

}
}