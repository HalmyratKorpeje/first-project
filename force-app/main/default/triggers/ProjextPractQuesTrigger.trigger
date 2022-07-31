/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger ProjextPractQuesTrigger on Salesforce_Project__c (before update) {
    if (Trigger.isBefore  &&  Trigger.isUpdate){
        ProjectCompleteTrigger.projComTicket(Trigger.new);
    }
}