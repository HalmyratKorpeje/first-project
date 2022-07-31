public  class DMLdeneme {
    public static void AccountRetunr(){
        list<Account> AccountList = new list<Account>();
        list<Account> acc = [SELECT Name, Type FROM Account WHERE Type != NULL ];
        system.debug(acc);
    }
    public static void AllowanceRecords(){
        list<Allowance__c> allowList = [SELECT Name,Status__c FROM Allowance__c];
        for (Allowance__c accName : allowList){
            if (accName.Status__c == NULL){
                accName.Status__c ='Approved';
                allowList.add(accName);
            }
        }
        update allowList;
    }
    public static void AccountDescription(){
        list<Account> accList = [SELECT Name, Phone, Description FROM Account];
        system.debug(accList);
        for (Account accName: accList){
            if (accName.Phone == Null){
                accName.Description = 'hey update your phone Number';
            }
        }
        update accList;
    }
    public static void AccountContactDepartment(){
        list<Account> accList = [SELECT Name, (SELECT LastName,Department, Phone  FROM Contacts) FROM Account];
        list<Account> AccountUpdateList = new list<Account>();
        list<Contact> ContactUpdateList = new list<Contact>();
        system.debug('this would be whole list: ' + accList);
        for (Account acc : accList){
            //system.debug('this would show just the Account name' + acc.Name);
            for (Contact conAcc: acc.Contacts){
                //system.debug('Account Name: ' + acc.Name +'Contact Last Name' +  conAcc.LastName + 'Contact Department' + conAcc.Department + 'Contact Phone: ' + conAcc.Phone );
                //system.debug('Contact Department: ' + conAcc.Department);
                //system.debug('Contact Phone: ' + conAcc.Phone);
                if (conAcc.Department =='Finance'){
                    conAcc.Department ='Finance now totally closed';
                    ContactUpdateList.add(conAcc);
                }
                if (conAcc.Department == NULL){
                    conAcc.Department = 'Name ucin yazanok hou';
                    ContactUpdateList.add(conAcc);
                }
            }
        }
        update ContactUpdateList;
    }
    public static void AccountContactCreate(){

        Account newAcc = new Account();
        //bu nu etyanimi account id si bilen contact create etyas.
        newAcc.Name = 'id bilen ulanyas';
        insert newAcc;
        Contact newCont = new Contact();
        newCont.AccountId = newAcc.id;
        newCont.LastName = 'yerow yigit';
        newCont.Phone = '56879467';
        insert newCont;
    }
    public static void AccountNumberUpdate(){
        list<Account> listAccount = [SELECT Name, AccountNumber FROM Account];
        list<Account> updateList = new list<Account>();
        for (Account accName : listAccount){
            boolean b = accName.AccountNumber == NULL;
            system.debug('is account number is null: ' + b);
            if (accName.AccountNumber == NULL){
                accName.AccountNumber = 'ABC5485789';
                updateList.add(accName);
            }
        }
        update updateList;
    }
    public static void ContactsPopulated(){
        list<Account> accountList = [SELECT Name, Phone, (SELECT Name,Email FROM Contacts WHERE Email != '') FROM Account];
        list<Contact> contactList = new list<Contact>();
        system.debug(accountList);
        for (Account accName : accountList){
            for (Contact conAcc: accName.Contacts){
                if (conAcc.Email != ''){
                    contactList.add(conAcc);
                }
            }
        }
        system.debug('whole list: ' + accountList);
    }
}
