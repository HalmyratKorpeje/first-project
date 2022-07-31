/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class PracticeuestTrigger {
    public static void updateOpp( List<Account> accList) {
        List<Opportunity> secOppList = new List<Opportunity>();
        List<Account> acc = [SELECT id,Name, (SELECT Name,StageName FROM Opportunities WHERE StageName != 'Closed Lost') FROM Account WHERE ID IN : accList WITH SECURITY_ENFORCED];
        for (Account secAcc: acc){
            for (Opportunity oppList: secAcc.Opportunities){
                oppList.StageName = 'Closed Lost';
                secOppList.add(oppList);
            }
        }
        if (!secOppList.isEmpty()){
            update secOppList;
        }
    }
    //public static void contactUpdate(list<Contact> conList){
    //    List<Account> accList = [SELECT Name, Phone , (SELECT Name, OtherPhone FROM Contacts WHERE ID IN : conList) FROM Account WHERE AccountID = ContactID];
    //}
}