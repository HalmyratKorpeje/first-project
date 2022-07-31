public  class practiceExercise3 {
    // public void listMethod() {
    //     List<string> listValue = new List<string>();
    //     listValue.add('Aed');
    //     listValue.add('Red');
    //     listValue.add('Zellow');
    //     listValue.add('Blue');
    //     listValue.add('Green');
    //     listValue.add('Black');
    //     listValue.add('Yellow');
    //     listValue.add('Golden');

    //     integer t = listValue.size();
    //     system.debug('Whole List: ' + listValue);
    //     system.debug('size of the list: ' + t);
    //     string r = 'Red';
    //     Boolean k = listValue.contains(r);
    //     system.debug('Contains: Red:  ' + k);
    //     string i = listValue.get(t-1);
    //     system.debug('last value: ' + i.toUpperCase());
    //     system.debug('fourth element: ' + listValue.get(3).toUpperCase());
    //     List<string> colourCodes = new List<string>();
    //     colourCodes.add('FF000');
    //     colourCodes.add('FF001');
    //     colourCodes.add('FF0041');
    //     colourCodes.add('FF002');
    //     colourCodes.add('FF003');
    //     colourCodes.add('FF004');
    //     colourCodes.add('FF0044');
    //     colourCodes.add('FF0049');

    //     system.debug('whole code list: ' + colourCodes);
    //     map<string, string> mergeMap = new map <string,string>();
    //     for (Integer a=0; a<t; a++){
    //         // for (Integer b=a; b<colourCodes.size(); b++){
    //             mergeMap.put(listValue.get(a), colourCodes.get(a));
    //         // }
    //     }
    //     system.debug('merge version: ' + mergeMap);
    // }
    public static void sectMethod (set <string> uniqueNameSet){
        Integer i = uniqueNameSet.size();
        uniqueNameSet.add('MAsha');
        uniqueNameSet.add('Medved');
        uniqueNameSet.add('Donald');
        uniqueNameSet.add('Mickey');
        Boolean u = uniqueNameSet.isEmpty();
        system.debug('is empty: ' + u);
        system.debug('whole list: ' + uniqueNameSet);
        //system.debug('third element: ' + uniqueNameSet.get(3));
        //system.debug('cleared version: ' + uniqueNameSet.clear());
        Boolean r = uniqueNameSet.isEmpty();
        system.debug('Is empty second: ' + r);
    }
    public static void airlineTicket(list<string> depCity, list<string> arrivalCity, list<integer> flightNumber, list<string> seat){
        for (Integer a=0; a<depCity.size(); a++){
            system.debug('this ticket is for the Journey: ' + depCity.get(a) + 'to ' + arrivalCity.get(a));
            system.debug('Your flight number is: ' + flightNumber.get(a) + 'seat number is ' +  seat.get(a));
        }
    }
    string firstName ;
    string lastName ; 
    Integer classYear;
    String majorStream;
    public  string studentReport(){
        system.debug('Report Generated for ' + firstName + lastName + classYear);
        return majorStream;
    }
}
