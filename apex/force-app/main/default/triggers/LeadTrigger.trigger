/**
*Description:This Trigger is used when user want to delete lead with working status 
created By:Bhaarat Shastri
created Date:5-Jan-23
*/
trigger LeadTrigger on Lead (after insert,before insert,after update,before update,
                            before delete,after delete,after undelete) {
    
    if (Trigger.isBefore && Trigger.isDelete) {
        LeadTriggerHandler.leadStatus(Trigger.old);
    }
}