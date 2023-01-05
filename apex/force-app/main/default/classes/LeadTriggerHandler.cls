public with sharing class LeadTriggerHandler {
    
    public static void leadStatus(List<Lead> leadList) {
        for (Lead lea : leadList) {
            if(lea.Status.equals('Working - Contacted')){
                lea.adderror('This lead can not be deleted, kindly contact the administrator');
            }
        }
    }
}
