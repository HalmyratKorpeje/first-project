/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-27-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ExceptionPractice {
    public static void exceptionDemoMethod () {
        Account acc = new Account();

        try {
            insert acc;
        }
        catch (DMLException d){
            system.debug('Exception Error: ' + d.getCause());
        }
        finally {
            //logic like sending an email 
            system.debug('Finally block code t see the next steps are running or not');
        }
    }
    public static void dataBaseMethod(){
        List<Account> accList = new List<Account>();
        Account acc = new Account();
        acc.Name = 'FirstAccount';
        accList.add(acc);
        Account secAcc = new Account();
        secAcc.Name = 'Second Account';
        accList.add(secAcc);
        // DataBase    Insert     --  all Or Nothing
        List <DataBase.SaveResult> dataResultList = Database.insert(accList, false);
        for (Database.SaveResult resAcc: dataResultList){
            if (resAcc.isSuccess()){
                system.debug('im Successful' + resAcc.id);
            } else {
                system.debug('i was on error with id: '+ resAcc.id + ', message: ' + resAcc.getErrors());
            }
        }
    }
}
