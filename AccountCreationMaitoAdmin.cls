public class AccountCreationMaitoAdmin {
    public static void sentEmail(List<Account> NewAccounts){
        List<Messaging.SingleEmailMessage> mails  = new List<Messaging.SingleEmailMessage>();
        User UsObj=[Select Id, Profile.Name, Email from  User where Profile.Name ='System Administrator'];
        system.debug(UsObj);
        for(Account accObj:NewAccounts){
            if(UsObj.Email!=null){
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                mail.setSenderDisplayName('Mercedes Benz');
                mail.setUseSignature(false);
                mail.setBccSender(false);
                mail.setSaveAsActivity(false);
                mail.toAddresses = new String[]{UsObj.Email};
                    mail.setSubject('New Account was Created.');
                String body = 'Dear System Administrator, <br/>';
body += 'An account has been created and name is '+accObj.Name+'.';
                mail.setHtmlBody(body);
                mails.add(mail);


            }
        }
        if(mails.size()>0){
            Messaging.SendEmailResult[] results = Messaging.sendEmail(mails);
            
                  if (results[0].success)
                          {
                          System.debug('The email was sent successfully.');
                               } else {
 					System.debug('The email failed to send: '+ results[0].errors[0].message);
}
        }
        
        
    }

}