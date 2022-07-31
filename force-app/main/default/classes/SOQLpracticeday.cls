public class SOQLpracticeday {
    public static void firstMethod(){
        List<Offer__c> childToParent = [SELECT Offeror__c,Offer_amount__c,Car__r.Brand__c, Car__r.Model__c FROM Offer__c ];
        system.debug('Whole list: ' + childToParent);
        for (Offer__c newList : childToParent){
            system.debug('Offeror name: ' + newList.Offeror__c);
            system.debug('Amount: ' + newList.Offer_amount__c);

        }
    }
    public static void secMethod(){
        List<Car__c> parentToChild = [ SELECT Brand__c,Name, (SELECT Offer_amount__c, Offeror__c FROM Offers__r )  FROM Car__c ];
        system.debug('whole list: ' + parentToChild);
        for (Car__c secList : parentToChild ){
            system.debug('Brand Name: ' + secList.Brand__c);
            system.debug('Regular name: ' + secList.Name);
            for (Offer__c thirdList : secList.Offers__r){
                system.debug('Child offer amount: ' + thirdList.Offer_amount__c);
                system.debug('Child offeror: ' + thirdList.Offeror__c);
            }
        }
    }
    public static void ThirdName(){
        List<Brand__c> randomName = [SELECT Manager__c , Date_of_earliest_model__c, Total_number_of_Devices__c, (SELECT Name,Price__c,Stock__c   FROM Models__r )   FROM Brand__c ];
        system.debug('whole list first: ' + randomName);
        for (Brand__c newName: randomName){
            system.debug('Just the parent name: ' + newName.Manager__c);
            system.debug('date earliest released: ' + newName.Date_of_earliest_model__c);
            system.debug('Number of Total Devices: ' + newName.Total_number_of_Devices__c);
            for (Model__c secName : newName.Models__r){
                system.debug('Child name: '+ secName.Name);
                system.debug('Child Price: '+ secName.Price__c);
                system.debug('Child stock: ' + secName.Stock__c);
            }
        }
    }
    public static void fourthName(){
        List<Account> accountToOpp = [SELECT Name,Industry,Rating, (SELECT CloseDate,StageName  FROM Opportunities WHERE StageName LIKE  '%Closed Lost%' ) FROM Account ];
        system.debug(accountToOpp);
    }
}
 