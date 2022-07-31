/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-27-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger LeadActivityDate on Lead (before insert, before update) {
    if (Trigger.isBefore  &&  Trigger.isInsert){
        WeekluAssignTrigger.LEadActivTask(Trigger.new);
    }
}