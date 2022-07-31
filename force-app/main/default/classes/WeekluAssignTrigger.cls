/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-27-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class WeekluAssignTrigger {
    public static void LeadActivTask (list <Lead> leadList ) {
        List<Lead> secLeadList = [SELECT Name, (SELECT ActivityDate , Status FROM Tasks WHERE Status != 'Completed' or Status != 'Deferred') FROM Lead WHERE ID IN : leadList];
        for (Lead leadAcc: secLeadList){
            for (Task taskAcc: leadAcc.Tasks){
                if (taskAcc.ActivityDate<= taskAcc.ActivityDate){
                    leadAcc.Next_Activity_Date__c =taskAcc.ActivityDate; 
                }
            }
        }
        update secLeadList;
    }
    public static void ProjTickComplete(List<Salesforce_Project__c> projList){
        List<Salesforce_Project__c> salesProjList = new List<Salesforce_Project__c>();
        for (Salesforce_Project__c firstProjAcc: projList){
            if (firstProjAcc.Status__c == 'Completed'){
                salesProjList.add(firstProjAcc);
                List<Salesforce_Project__c> secProjList = [SELECT id,Name,Status__c, (SELECT id,Status__c 
                FROM Salesforce_Tickets__r) FROM Salesforce_Project__c WHERE ID IN : salesProjList WITH 
                SECURITY_ENFORCED];
                for (Salesforce_Project__c secprojAcc: secProjList){
                    for(Salesforce_Ticket__c tickAcc: secprojAcc.Salesforce_Tickets__r){
                        if (tickAcc.Status__c!= 'Completed'){
                            secprojAcc.id.addError('please check all other open tickets before Complete this Project');
                        }
                    }
                }
            }
        }
    }
    public static void tickettoProjMeth (List <Salesforce_Ticket__c> tickList){
        List<Salesforce_Ticket__c> secTickList = new List<Salesforce_Ticket__c>();
        set<id> ticktoProjID = new set <id>();
        for (Salesforce_Ticket__c tickAcc: tickList){
            if (tickAcc.Status__c == 'Completed'){
                ticktoProjID.add(tickAcc.Salesforce_Project__c);
            }
        }
        List<Salesforce_Ticket__c> accList = [SELECT id,Status__c, (SELECT FROM Salesforce_Project__c WHERE ID IN :  ) FROM Salesforce_Ticket__c WHERE ID IN : ticktoProjID];
        //for ()
    }
}
