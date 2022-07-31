public  class trialSOQL {
    public  void trialClassName(){
        List<Account> accList =[SELECT Name,ID,BillingAddress,Description FROM Account LIMIT 3];
        system.debug('Full accList: ' + accList);
        for (Account anyThing: accList){
            string c = anyThing.Name;
            string d = anyThing.Description;
            Id e = anyThing.Id;
            system.debug('Name: ' + c);
            system.debug('Billing Address: ' + d);
            system.debug('Id: ' + e);
        }
    }
    public static void trialMethod(){
        Opportunity accList = [SELECT Amount,OrderNumber__c, Name FROM Opportunity LIMIT 1];
        system.debug(accList);
    }
    public static void trialThird(){
        Account secList = [SELECT Active__c, Fax,Rating,Name,CustomerPriority__c FROM  Account LIMIT 1];
        system.debug(secList);
        system.debug('Rating: ' + secList.Rating);
        system.debug('Fax: ' + secList.Fax);
    }
}