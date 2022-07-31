/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-19-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger updateContactTrigger on Contact (before insert, before update) {
    if (Trigger.isBefore  &&  Trigger.isInsert){
        TriggerHangler.contactLeadError(Trigger.new);
    }
    if (Trigger.isBefore   &&   Trigger.isUpdate){
        TriggerHangler.contactLeadUpdateError(Trigger.oldMap,Trigger.new);
    }
}