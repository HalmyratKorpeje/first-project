/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-19-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger AccountBillingUpdate on Account (after Update, before update, before insert ) {
    if (Trigger.isAfter   &&   Trigger.isUpdate){
        TriggerHangler.updateBillingAccount(Trigger.oldMap, Trigger.new);
        TriggerHangler.vipUpdate(Trigger.oldMap, Trigger.new);
    }
    if (Trigger.isBefore  &&  Trigger.isUpdate){
        Boolean directFlag = Trigger.isUpdate;
        TriggerHangler.AccountActive(Trigger.oldMap, Trigger.new, directFlag);
    }
    if(Trigger.isBefore &&  Trigger.isInsert){
        TriggerHangler.AccountInsActive(Trigger.new);
    }
}