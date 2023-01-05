/**
*Description:created class to handle lead trigger 
created By:Bhaarat Shastri
created Date:5-Jan-23
*/
public with sharing class LeadTriggerHandler {
    
    //declare final method
    public static final String WORKING_STATUS = 'Working - Contacted';
    
    // A method to check lead status
    public static void leadStatus(List<Lead> leadList) {
        for (Lead lea : leadList) {
            if(lea.Status.equals(WORKING_STATUS)){//checking lead status
                lea.adderror('This lead can not be deleted, kindly contact the administrator');
            }//end if
        }//end for
    }// end method
}// End class
