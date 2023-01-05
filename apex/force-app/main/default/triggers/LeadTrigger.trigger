trigger LeadTrigger on Lead (before delete) {
    
    for(Lead lea : trigger.old){
            if(lea.Status.equals('Working - Contacted')){
                lea.adderror('An account with a person mailing state is NY can not be deleted');
            }
     }
}