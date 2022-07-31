public  class SOSL {
    List<List<sObject>> listName = [FIND 'United' IN ALL FIELDS RETURNING Account(Name,AnnualRevenue), Opportunity(Name, StageName) ];
    List<Account> anyName = (Account[] listName[0]);
    system.debug(anyNAme) 
   
}
