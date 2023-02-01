public class HiringManagerHelper {
    
    Public  void CreateRecruiterRecords(integer maxRecords)
 {
 if(maxRecords > 0)
 {
 for(integer counter = 1; counter <= maxRecords; counter++)
 {
 Hiring_Manager__c hr = new Hiring_Manager__C();
 
 hr.Name = 'Sample HR'+ counter;
 hr.Location__c = 'Chennai';
 hr.Email_ID__c = 'samplehr'+counter+'@gmail.com';
 //hr.Contact_Number__c = 9900990000;
 
 insert hr;
 
 if(hr.Id != null)
 {
system.debug('Record Inserted Successfully. Record id is..: '+ hr.id);
 }
 }
 }
 }
}