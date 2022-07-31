public  class DMLpractise {
   public static void dmlMEthod(){
    Account anyRandomName = new Account();
    anyRandomName.Name = 'Hal';
    anyRandomName.Industry = 'Chemicals';
    anyRandomName.Rating = 'Hot';
    anyRandomName.Active__c = 'No';
    insert anyRandomName;


    anyRandomName.AnnualRevenue = 458979;
    anyRandomName.Phone = '6498378873';
    update anyRandomName;    
   }
   public static void dmlCustomObject(){
    Brand__c randomName = new Brand__c();
    randomName.Name = 'new Brand';
    insert randomName;

    randomName.Manager__c = 'HalMyrat';
    update randomName;
   }

    public static void dmlRetreive(){
        Brand__c newName = [SELECT Name, Manager__c FROM Brand__c WHERE Name = 'new Brand' LIMIT 1];
        newName.Name = 'New Name';
        update newName;
    }
    public static void thirdMethod(){
        Brand__c accName = new Brand__c ();
        accName.Name = 'Zizuriii';
        insert accName;
        Model__c secRandom = new Model__c();
        secRandom.Name = 'New Model Name';
        secRandom.Price__c = 300;
        secRandom.Brand__c = accName.id;
        insert secRandom;
    }
    public static void fourthMethod(){
        Brand__c tekAccess = [SELECT Name, Manager__c FROM Brand__c WHERE Name = 'Zizuriii' ];
        tekAccess.Name = 'WuuuHaaaHaa';
        update tekAccess;
    }
    public static void fifthMethod(){
        Salesforce_Project__c accEtmeli = new Salesforce_Project__c();
        accEtmeli.Project_Name__c = 'Lyuboy name';
        accEtmeli.Status__c = 'Completed';
        insert accEtmeli;
        Salesforce_Project__c accSecond = [SELECT Project_Name__c, Status__c FROM Salesforce_Project__c WHERE Project_Name__c = 'Lyuboy name' LIMIT 1];
        Salesforce_Ticket__c ticketAccess = new Salesforce_Ticket__c();
        ticketAccess.Subject__c = 'Astronomy';
        ticketAccess.Status__c = 'Completed';
        ticketAccess.Salesforce_Project__c = accSecond.id;
        insert ticketAccess;
    }
    public static void sixthMethod(){
     List<Account> listName = new List <Account>();
     //indi muna access etmeli bolyar new instance doretmek ucin
     Account newInstance = new Account();
     newInstance.Name = 'First';
     //now we need to add this instance to the list
     listName.add(newInstance);

     //then if we want to add more records at the same time we need to create another access name for the second instance.
     Account secAccessName = new Account();
     secAccessName.Name = 'Second';
     //we have to add this second instance to our list
     listName.add(secAccessName);

     //lets create the third one

     Account thirdInstance = new Account();
     thirdInstance.Name = 'Third Name';
     listName.add(thirdInstance);

     //now we need to insert the accountList so we can see in our org

     insert listName;
    }
    public static void seventhMethod(){
        Account accName = [SELECT Name FROM Account WHERE Name = 'Third Name' LIMIT 1];
        Delete accName;
    }
    public static void dmlUpdate(){
        List <Salesforce_Project__c> projList = [SELECT Project_Name__c, Description__c  FROM Salesforce_Project__c WHERE Description__c = '' ];
        for (Salesforce_Project__c ranName : projList){
            ranName.Description__c = 'we just updated the description part';
        }
       update(projList);
    }
    public static void emailPopulated(){
        list<Account> accountList = new list<Account>();
        list<Account> accList = [SELECT Name, (SELECT Name, Email FROM Contacts) FROM Account];
        system.debug('Whole List: ' + accList);
        for (Account acc: accList){
            //system.debug('Account name: ' + acc.Name);
            for (Contact contAcc: acc.Contacts){
                if (contAcc.Email != NULL){
                    accountList.add(acc);
                    system.debug('account name with email: ' + acc.Name);
                    system.debug('contact name: ' + contAcc.Name);
                    system.debug('contact email: ' + contAcc.Email);
                }
            }
        }
        system.debug ('Whole list ' + accList);
    }
    public static void customerPriority(){
        List<Case> caseList = [SELECT Origin, Priority, Account.CustomerPriority__c FROM Case WHERE Account.CustomerPriority__c != NULL];
        system.debug(caseList);
        for (Case caseAcc: caseList){
            caseAcc.Priority = caseAcc.Account.CustomerPriority__c;
        }
        update caseList;
    }
}
