public  class Hellowlrd {
   // public static void newMethod(){

   // }

    public static void secMethod(){
        Salesforce_Project__c proj = [Select Project_Name__c,Status__c from Salesforce_Project__c where Project_Name__c = 'New Test Project' Limit 1 ];
        proj.Status__c ='In-progress';
        update proj;
    }
    public static void thirdMethod(){
        Account acc = new Account();
        acc.Name = 'AccForRelationship';
        insert acc;
        Contact con = new Contact();
        con.FirstName = 'Hal Myrat';
        con.LastName = 'AHA';
        con.AccountID = acc.id;
        insert con;
    }
}

