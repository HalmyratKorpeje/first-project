/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-27-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger ProjTicketTask on Salesforce_Project__c (before update) {
    if (Trigger.isBefore  &&  Trigger.isUpdate){
        WeekluAssignTrigger.ProjTickComplete(Trigger.new);
    }
}