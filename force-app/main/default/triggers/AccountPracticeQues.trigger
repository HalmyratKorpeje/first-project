/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger AccountPracticeQues on Account (after update) {
    if (Trigger.isAfter  &&  Trigger.isUpdate){
        PracticeuestTrigger.updateOpp(Trigger.new);
    }
}