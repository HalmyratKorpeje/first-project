public  class practiceSOQL {
    // public static void methodName(){
    //     List <Account> anyName = [SELECT id, Name FROM Account WHERE Name LIKE '%Burlington Textiles Corp of America%'  ];
    //     Integer a = Account.id;
    //     system.debug('the List of the ID: ' + a);
    //     system.debug(anyName);
    // }
    public static void secMEthod(){
        List<Account> secTime = [SELECT Name, AnnualRevenue, Phone  FROM Account ORDER BY AnnualRevenue DESC ];
        for (Account acsessing : secTime){
            string naming = acsessing.Name;
            system.debug('ilk Naming: ' + naming);
        }
        for (Account trialName: secTime){
            system.debug('this time annual revenue: '+ trialName.AnnualRevenue);
        }
        Account accNo = [SELECT Name,AnnualRevenue,Phone FROM Account ORDER BY AnnualRevenue DESC LIMIT 1];
        system.debug(accNo);
        system.debug('Phone Number: ' + accNo.Phone);
       // system.debug('Annual Revenue: '+ accNo.AnnualRevenue);
        system.debug('bu bir liste hali: ' + secTime);
        system.debug('Name: ' + accNo.Name);
        // for (Account nameDiyesek : accNo){
        //     system.debug('Annual revenue for each li' + nameDiyesek.AnnualRevenue);
        // }
    }
    public void methodTrial(){
        List<Opportunity> ListName = [SELECT Amount, Name, StageName  FROM Opportunity];
        system.debug(ListName);
        for (Opportunity trial: ListName){
            system.debug('ayry ayry yazyas: ' + trial.Amount);
            string p = trial.Name;
            system.debug('name ayry ayry haly: ' + p);
        }
        Opportunity munadaName = [SELECT Amount, Name, StageName  FROM Opportunity LIMIT 1];
        system.debug('dine birini alyas: ' + munadaName);
    } 
    public static void againMethod(){
        List<Model__c> modelBrandList =[SELECT Name, Price__c, Stock__c, Brand__r.Name,Brand__r.Highest_price__c  FROM Model__c];
        system.debug(modelBrandList);
        for (Model__c shuIcine : modelBrandList){
            system.debug('Just name: ' + shuIcine.Name);

        }
    }
    public static void fourthMethod(){
        List<Salesforce_Project__c> anyListNAme =[SELECT Project_Name__c, Status__c, (SELECT Name, Priority__c FROM Salesforce_Tickets__r)  FROM Salesforce_Project__c];
        system.debug('parent to child: ' + anyListNAme);
        for (Salesforce_Project__c givenName : anyListNAme){
            system.debug('Just only project name: ' + givenName.Project_Name__c);
            system.debug('Status nasil: ' + givenName.Status__c);
            for (Salesforce_Ticket__c thisForTIcket : givenName.Salesforce_Tickets__r){
                system.debug('chuld project priority: ' + thisForTIcket);

            }
        }
    }
    public static void fifthMethod(){
        List<Brand__c> brandList = [SELECT Name,Total_number_of_Devices__c, (SELECT Name,Price__c FROM Models__r )  FROM Brand__c];
        system.debug('whole list of brand mode: ' + brandList);
        for (Brand__c eachLoop: brandList){
            system.debug('once isimler: ' +eachLoop.Name );
            system.debug('how many device? ' + eachLoop.Total_number_of_Devices__c);
            for(Model__c modelEachLoop : eachLoop.Models__r){
                system.debug('model name: ' + modelEachLoop.Name);
                system.debug('Price: ' + modelEachLoop.Price__c);
            }
        }

    }
    public static void sixthMethod(){
        List<Model__c> childToParent =[SELECT Name, Price__c, Brand__r.Total_number_of_Devices__c, Brand__r.Refund__c  FROM Model__c];
        system.debug('List of the child to Parent: ' + childToParent);
        for (Model__c chilForParentEach: childToParent){
            system.debug('Just the Names: ' + chilForParentEach.Name);
            system.debug('Just the Prices: ' + chilForParentEach.Price__c);
        }
    }
}
