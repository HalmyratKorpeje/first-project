public  class Assignment1 {
    public static list<Account> methodName(){
        List<Account> listName = [SELECT Name, Type FROM Account WHERE Type != NULL];
        return listName;
    }
    public static void secMEthod(){
        list<Allowance__c> newList = [SELECT Name, Status__c  FROM Allowance__c ];
        system.debug(newList);
        for (Allowance__c forList : newList){
            if (forList.Status__c == Null){
                forList.Status__c = 'Submitted';
            }
            update forList;
        }
    }
    public static void thirdMethod(){
        string k = 'null';
        List<Account> newList = [SELECT Name, Phone, AccountNumber FROM Account WHERE AccountNumber != '' ];
        system.debug('List of the accounts where account Number is not NUll' + newList);
        for (Account secList : newList){
            system.debug('Just the name: ' + secList.Name);
            system.debug('Just the Phone N: ' + secList.Phone);
            system.debug('Account number: ' + secList.AccountNumber);
        }
        List<Account> notEqualList = [SELECT Name, AccountNumber FROM Account WHERE AccountNumber = '' ];
        
        system.debug('account is null: ' + notEqualList);
    }
    public static void fourthMethod(){
        list<Account> listName = [SELECT Name, Id, (SELECT AccountId,Name FROM Contacts WHERE Email != NULL) FROM Account];
        for (Account accName: listName){
            accName.
        }
        update 

    }
    public static void sixthMethod(){
        List<Case> listName = [SELECT Status, Origin , Priority, Account.Name, Account.CustomerPriority__c FROM Case]; 
        for (Case newName : listName){
            if (newName.Account.CustomerPriority__c !=''){
                list<Case> newList = new list <Case>();
                newList.add(newName);
                system.debug(newList);
            }
        }
    }
}
