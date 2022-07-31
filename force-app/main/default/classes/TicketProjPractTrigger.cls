/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-27-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class TicketProjPractTrigger {
    public static void methTicketProj (List <Salesforce_Ticket__c> tickList) {
        set <Id> tickThirdList = new Set <Id> ();
        for (Salesforce_Ticket__c tickAcc: tickList){
            if (tickAcc.Status__c == 'Completed'){
                tickThirdList.add(tickAcc.Salesforce_Project__c);
            }
        }
        List <Salesforce_Project__c> projList = [SELECT Project_Name__c,Status__c, (SELECT Status__c  FROM Salesforce_Tickets__r WHERE Status__c = 'Completed' and Status__c = 'Cancelled')   FROM Salesforce_Project__c WHERE ID IN : tickThirdList WITH SECURITY_ENFORCED];
        if (!projList.isEmpty()){
            for (Salesforce_Project__c projAcc: projList){
                projAcc.Status__c = 'Completed';
            }
            update projList;
        }
    }
}


//List<Salesforce_Ticket__c> secTickList = [SELECT Status__c, Salesforce_Project__r.Name   FROM Salesforce_Ticket__c WHERE ID IN : tickList WITH SECURITY_ENFORCED];
