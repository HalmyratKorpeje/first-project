/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger TicketProjPracTrigger on Salesforce_Ticket__c (after update) {
    if (Trigger.isAfter  &&  Trigger.isUpdate){
        TicketProjPractTrigger.methTicketProj(Trigger.new);
    }

}