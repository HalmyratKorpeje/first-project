/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ProjectCompleteTrigger {
    public static void projComTicket(List<Salesforce_Project__c> projList) {
        List<Salesforce_Project__c> secProjList = new List<Salesforce_Project__c>();
        List<Salesforce_Project__c> salesProjList = [SELECT Name,Status__c, (SELECT Name, Status__c FROM Salesforce_Tickets__r) FROM Salesforce_Project__c WHERE ID IN : projList WITH SECURITY_ENFORCED];
        for (Salesforce_Project__c salProjAcc: salesProjList){
            for (Salesforce_Ticket__c tickAcc : salProjAcc.Salesforce_Tickets__r){
                if (tickAcc.Status__c != 'Completed'){
                    salProjAcc.addError('brouuu');
                }
            }
        }
    }
}
