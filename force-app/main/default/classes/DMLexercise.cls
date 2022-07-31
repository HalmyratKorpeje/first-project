public class DMLexercise {
    public static void firstMethod(){
        list<Account> listName = new list <Account>();
        Account accName2 = new Account();
        accName2.Name = 'ikinji biri ';
        accName2.Name = '';
        listName.add(accName2);
        //insert listName;
        Database.insert(listName, False);
    }
    public static void secMethod(){
        List<Salesforce_Project__c> projList = new List <Salesforce_Project__c>();
        Salesforce_Project__c newAcc = new Salesforce_Project__c();
        newAcc.Project_Name__c = 'firstInserting';
        projList.add(newAcc);
        //insert projList;
        Salesforce_Project__c secProjList = [SELECT Project_Name__c, Description__c FROM Salesforce_Project__c LIMIT 1];
        secProjList.Project_Name__c = 'then We Upsert';
        projList.add(secProjList);
        upsert projList;
    }
    public static void thirdMethod(){
        List<Account> listName = new List<Account>();
        //instance olusturmali indi
        Account accName = new Account();
        accName.Name = 'Baibuuuuu';
        listName.add(accName);
        //simdi namani update etjek bolsak retrieve etmeli.
        Account retName = [SELECT Name, Industry  FROM Account WHERE Name = 'First' LIMIT 1];
        retName.Name = 'AfterFirst';
        listName.add(retName);
        upsert listName;
    }
}
