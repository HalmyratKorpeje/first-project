/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger practiceTrigger on Account (before update, after update, before delete, after delete, after insert, after undelete) {
    if (Trigger.isBefore  &&  Trigger.isDelete){
        TriggerPractice.notDeleteAccount(Trigger.old);
    }
 
    if (Trigger.isAfter  &&  Trigger.isUpdate){
        TriggerPractice.methodName(Trigger.oldMap, Trigger.new);
    }
    if (Trigger.isAfter  &&  Trigger.isDelete){
        TriggerPractice.emailAfterDelete(Trigger.old);
    }
    if (Trigger.isAfter  &&  Trigger.isInsert){
        TriggerPractice.updateEmail(Trigger.new);
        TriggerPractice.createContact(Trigger.new);

    }
    if (Trigger.isAfter  &&  Trigger.isUndelete){
        TriggerPractice.undeleteEmil(Trigger.new);
    }
}