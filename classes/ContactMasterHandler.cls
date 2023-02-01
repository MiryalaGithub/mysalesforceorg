public class ContactMasterHandler {
    Public void createContactRelationshipByContact(List<Contact> List_Contacts){
        List<Contact_Relationship__c>ConList= new List<Contact_Relationship__c>();
        for(Contact newCons:List_Contacts){
            if(newCons.Contact_Relationship__c==true){
                Contact_Relationship__c cd= new Contact_Relationship__c();
                cd.Name=newCons.LastName;
                cd.Contact__c =newCons.Id;
                ConList.add(cd);
            }
        }
        insert ConList;
        
    }

}