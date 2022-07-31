/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class IsAccessible {
    public static void AccMethod() {
        if (Schema.SObjectType.Opportunity.IsAccessible()){
            //now we will write the logic how to access Field Level with Securily
        }
        if (Schema.SObjectType.Opportunity.fields.OrderNumber__c.isUpdateable()){
            
        }
    }
}
