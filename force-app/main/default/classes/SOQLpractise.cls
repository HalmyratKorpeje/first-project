public  class SOQLpractise {
    public static void methName(){
        string ratingValue = 'Hot';
        List<Account> accList = [SELECT Name, Rating, AnnualRevenue FROM Account WHERE Rating =: ratingValue];
        system.debug(accList);
        for (Account secList: accList){
            system.debug('account name: ' + secList.Name);
            //system.debug()
        }
    }
    public static void secMethName( string stageValue, string leadValue){
        List<Opportunity> oppName = [SELECT Name,StageName,LeadSource FROM Opportunity WHERE LeadSource =: leadValue AND StageName =: stageValue];
        system.debug(oppName);
        for (Opportunity oppList : oppName){
            system.debug('Name: ' + oppList.Name);
            system.debug('Stage: ' + oppList.StageName);
            string i = oppList.LeadSource;
            system.debug('Lead Source: ' + i);
        }
    }
    public static void thirdMEthod(){
        List<Account> accountList = [SELECT Name,AnnualRevenue,Type  FROM Account WHERE Type = 'Customer - Direct' ];
        system.debug(accountList);
        for (Account listName: accountList){
            system.debug('Account name: ' + listName.Name);
            system.debug('Annual revenue: ' + listName.AnnualRevenue);
            system.debug('Type: ' + listName.Type);
        }
    }
    

}