/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger newContactPracticeTrigger on Contact (before delete, before update) {
    if(Trigger.isBefore  &&  Trigger.isDelete){
        TriggerPractice.notDeleteContact(Trigger.old);
    }
    if (Trigger.isBefore  &&  Trigger.isUpdate){
        
    }
}