/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-27-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger TickettoProjComplete on Salesforce_Ticket__c (after update) {
    if (Trigger.isAfter  &&  Trigger.isUpdate){
        WeekluAssignTrigger.tickettoProjMeth (Trigger.new);
    }
}