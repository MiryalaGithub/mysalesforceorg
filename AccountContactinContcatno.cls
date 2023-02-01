public class AccountContactinContcatno {
    public static void contactsToCreate(List<Customer__c> ListCustomer){
        List<AccountTeamMember> teamMember = new List<AccountTeamMember>();
        List<AccountShare> forsharing = new  List<AccountShare>();
        for(Customer__c CustObj:ListCustomer){
            if(CustObj.Account_Manager__c!=null){
                AccountTeamMember member = new AccountTeamMember();
               member.TeamMemberRole='Account Manager';
                member.UserId=CustObj.Account_Manager__c;
                member.AccountId=CustObj.Account__c;
                AccountShare ash = new AccountShare();
                ash.AccountId =CustObj.Account__c;
                ash.UserOrGroupId=CustObj.Account_Manager__c;
                ash.CaseAccessLevel='Read Only';
                ash.ContactAccessLevel='Read Only';
                ash.OpportunityAccessLevel ='Read Only';
                ash.AccountId=CustObj.Account__c;
                   forsharing.add(ash);
                teamMember.add(member);
                
            }
        }
        if(teamMember!=null){
            insert teamMember;
        }
        if(forsharing!=null){
            insert forsharing;
        }
        
    }

}