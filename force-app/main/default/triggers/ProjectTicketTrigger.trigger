/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-19-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger ProjectTicketTrigger on Salesforce_Project__c (after insert) {
    if (Trigger.isAfter   &&   Trigger.isInsert){
        TriggerHangler.createPRojectTicket(Trigger.new);
    }

}