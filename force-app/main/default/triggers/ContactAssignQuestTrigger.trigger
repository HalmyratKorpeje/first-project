/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger ContactAssignQuestTrigger on Contact (after insert) {
    PracticeuestTrigger.contactUpdate(Trigger.new);
}