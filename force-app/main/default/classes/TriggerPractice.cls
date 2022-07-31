/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class TriggerPractice {
    public static void  methodName (Map<Id,Account> mapListNAme ,List<Account> newList) {
        List<Account> accList = new List<Account>();
        for(Account acc: newList){
            if(acc.BillingAddress != mapListNAme.get(acc.Id).BillingAddress){
                accList.add(acc);
            }
        }
        List<Account> secAccList = [SELECT Id, Name, (SELECT Name FROM Contacts) FROM Account WHERE ID IN : accList WITH SECURITY_ENFORCED];
        for (Account secAcc: secAccList){
            for (Contact conAcc: secAcc.Contacts){
                conAcc.MailingCity = secAcc.BillingCity;
                
            }
        }
    }
    public static void notDeleteAccount(List<Account> accListName){
        for (Account acc: accListName){
            if (acc.Active__c == 'Yes'){
                acc.addError('delete is not possbile');
                
            }
        }
    }
    public static void notDeleteContact(List<Contact> conOldList){
        for (Contact con: conOldList){
            if (con.Phone!= NULL){
                con.addError('yoouu brou there is a contact number you gotta delete with person before deleting his info');
            }
        }  
    }
    public static void emailAfterDelete (List<Account> accList) {
        list<Messaging.SingleEmailMessage> emailMsg = new List<Messaging.SingleEmailMessage> ();
        List<String> emailAdressList = new List<String>();
        List<String> managerEMail = new List< String>();
        for (Account acc: accList){
            Messaging.SingleEmailMessage mesInstance = new Messaging.SingleEmailMessage();
            emailAdressList.add(UserInfo.getUserEmail());
            mesInstance.setToAddresses(emailAdressList);
            mesInstance.setSubject('Account deleted information');
            mesInstance.setPlainTextBody('brou your: ' + acc.Name + 'has been deleted');
            emailMsg.add(mesInstance);
        }
        Messaging.sendEmail(emailMsg);
    }
    public static void updateEmail (List<Account> newAccList){
        List<Messaging.SingleEmailMessage> listMessageKatalog = new List<Messaging.SingleEmailMessage>();
        List<String> emailAdressList = new List<String>();
        for (Account acc: newAccList){
            Messaging.SingleEmailMessage emailInstance = new Messaging.SingleEmailMessage();
            emailAdressList.add(UserInfo.getUserEmail());
            emailInstance.setToAddresses(emailAdressList);
            emailInstance.setSubject('account has been created');
            emailInstance.setPlainTextBody('brou you have new account created');
            listMessageKatalog.add(emailInstance);
        }
        Messaging.sendEmail(listMessageKatalog);
    }
    public static void undeleteEmil(List<Account> accList){
        List<Account> secAccList = new List<Account>();
        List<Messaging.SingleEmailMessage> emailMesList = new List<Messaging.SingleEmailMessage>();
        for (Account acc: [SELECT Name FROM Account WHERE ID IN : accList WITH SECURITY_ENFORCED]){
            acc.Active__c = 'Yes';
            secAccList.add(acc);
            Messaging.SingleEmailMessage emailInstance = new Messaging.SingleEmailMessage();
            List<String> emailAddList = new List<String>();
            emailAddList.add(UserInfo.getUserEmail());
            emailInstance.setToAddresses(emailAddList);
            emailInstance.setSubject('you Account: ' + acc.Name + 'has been deactivated');
            emailInstance.setPlainTextBody('brouu your account has been deactivated wanted to inform');
            emailMesList.add(emailInstance);
        }
        Messaging.sendEmail(emailMesList);
        if (!secAccList.isEmpty()){
            update secAccList;
        }
    }
    public static void createContact(List<Account> newAccList){
        List<Contact> conList = new List<Contact>();
        for(Account acc: newAccList){
            if (acc.Industry=='Banking'){
                Contact conInstance = new Contact();
                conInstance.LastName = acc.Name;
                conInstance.Id = acc.Id;
                conList.add(conInstance);
            }
            if (!conList.isEmpty()){
                insert conList;
            }
        }
    }
}
