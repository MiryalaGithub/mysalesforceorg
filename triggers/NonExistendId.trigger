trigger NonExistendId on Case (before insert) {
    for (case mycase : Trigger.new){
        casecomment cc   = new caseComment();
        cc.CommentBody   = 'Case recieved by Agents';
        cc.parentId      = mycase.Id;
        insert cc;
        
    }                          

}