public class demoPrimitiveDataTypes {
    
    public void displayValues() {
        string favCharacter = 'Rachel';
        Integer Season = 10;
        Boolean isHeCute = True;
        
        system.debug('My favourite Character ' + favCharacter) ;
        system.debug('How many seasons Friends?'+ Season);
        system.debug('Is Joey cute  ' + isHeCute + ' ' + ' Yes He is');

        Long myLongNum = 136745675 ;
        Double myDoubleNum = 255.88 ;
        system.debug('print my long number' + myLongNum) ;
        system.debug('print my double number' + myDoubleNum);

        Date myDate = system.today();
        ID mysalesforceID = '0018a00001pNYffAAG';
        Object myObj = 12345;
        system.debug ('print my date' + mydate);
        system.debug ('print my ID' + mysalesforceID);
        system.debug ('print the obj' + myObj);

        string firstname = 'Hal';
        string lastname = 'Myrat';
        string fullname = firstname + lastname ;
        system.debug('Full Name:' + fullname) ;


    }
        
   

}