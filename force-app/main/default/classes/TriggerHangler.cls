/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-19-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public  class TriggerHangler {
    public static void contactLeadError(list<Contact> conList) {
        List<Contact> secConList = new List<Contact>();
        for (Contact accCon : conList){
            if(accCon.LeadSource == 'Partner Referral'){
                accCon.addError('you can not select partner referral');
            }
        }
    }
    public static void contactLeadUpdateError(map<id,Contact> oldMapList, list<Contact> newconListName) {
        for (Contact conFor: newconListName){
            if (conFor.LeadSource != oldMapList.get(conFor.id).LeadSource){
                conFor.addError('you can not update the lead source');
            }
        }
    }
    public static void createPRojectTicket(list<Salesforce_Project__c> projMapList){
        list<Salesforce_Ticket__c> newTicketList = new list<Salesforce_Ticket__c>();
        for (Salesforce_Project__c	accProj: projMapList){
            Salesforce_Ticket__c acc = new Salesforce_Ticket__c();
            acc.Salesforce_Project__c = accProj.id;
            acc.Subject__c = 'Mathematics';
            newTicketList.add(acc);
        }
        insert newTicketList;
    }
    public static void updateBillingAccount(map<id,Account> oldmapList, list<Account> accList){
        List<Account> accListing = new list <Account>();
        for (Account acc: accList){
            if(acc.BillingAddress != oldmapList.get(acc.id).BillingAddress || acc.BillingCity != oldmapList.get(acc.id).BillingCity || acc.BillingStreet != oldmapList.get(acc.id).BillingStreet || acc.BillingState != oldmapList.get(acc.id).BillingState || acc.BillingPostalCode != oldmapList.get(acc.id).BillingPostalCode || acc.BillingCountry != oldmapList.get(acc.id).BillingCountry){
                accListing.add(acc);
            }
        }
        List<Account> accwithConList = [SELECT id, Name,BillingCity,BillingStreet,BillingCountry,BillingState,BillingPostalCode,(SELECT id,Name FROM Contacts) FROM Account WHERE ID IN: accListing WITH SECURITY_ENFORCED];
        for (Account accfor: AccwithConList){
            for (Contact conAcc: Accfor.Contacts){
                conAcc.MailingCity = Accfor.BillingCity;
                conAcc.MailingStreet = Accfor.BillingStreet;
                conAcc.MailingCountry = Accfor.BillingCountry;
                conAcc.MailingState = Accfor.BillingState;
                conAcc.MailingPostalCode = Accfor.BillingPostalCode;
            }
        }
        if (!AccwithConList.isEmpty()){
            update accwithConList;
        }
    }
    public static void AccountActive(Map<id,Account> oldMapList, List<Account> accNewList, Boolean directFlag){
        for(Account acc: accNewList){
            if(acc.Active__c != oldMapList.get(acc.id).Active__c && acc.Active__c =='Yes'){
                acc.Description = 'yooouu brouu ur Account is now active';
            }
        }
    }
    public static void AccountInsActive(list<Account> accList){
        List<Account> accListing = new List<Account>();
        for (Account acc: accList){
            if (acc.Active__c == 'Yes'){
                acc.Description = 'Yooooo maaan yooouurr account is now active';
                accListing.add(acc);
            }
        }
        insert accListing;
    }
    public static void vipUpdate(Map<Id,Account> oldMapList, List<Account> accList){
        List<Account> accListing = new List<Account>();
        for (Account acc: accList){
            if (acc.VIP__c != oldMapList.get(acc.id).VIP__c){
                accListing.add(acc);
            }
        }
    }
        //Account accName = [SELECT id,Name,(SELECT id, Name FROM Contacts) FROM Account WHERE ID IN: accListing];
        //for (Account secAcc: accName){
        //    for(Contact conAcc: accName.Contacts){
        //        conAcc.VIP__c = oldMapList.get(conAcc.id).VIP__c;
        //    }
        //}
    //}
}