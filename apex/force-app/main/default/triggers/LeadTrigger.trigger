trigger LeadTrigger on Lead (before delete) {
    
    for(Lead lea : trigger.old){
            if(lea.Status.equals('Working - Contacted')){
                lea.adderror('This lead can not be deleted, kindly contact the administrator');
            }
     }
}