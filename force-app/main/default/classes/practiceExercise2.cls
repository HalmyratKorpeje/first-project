public  class practiceExercise2 {
    public static void dynamicCalcultor( Integer a, Integer b, String c){
        if (c=='Addition'){
            system.debug('add result: ' + (a+b));
        }
        if (c=='Substraction'){
            system.debug('sub result: ' + (a-b));
        }
        if (c=='Division'){
            system.debug('div result: ' + (a/b));
        }
        if (c=='Multiplication'){
            system.debug('mult result: ' + (a*b));
        }
    }
    public static void currencyExchange(){
        map<String, Decimal> mapName = new map<String,Decimal>();
        mapName.put('AUD', 0.73);
        mapName.put('CAD', 0.78);
        mapName.put('EUR', 1.13);
        mapName.put('NZD', 0.68);
        mapName.put('INR', 0.013);
        system.debug('full map: ' + mapName);
        Boolean k = mapName.containsKey('SAD');
        system.debug('contains: ' + k);
    }
    public static void getUniqueValues(){
        List<String> listName = new List<String>();
        listName.add('Apple');
        listName.add('Apple');
        listName.add('Orange');
        listName.add('Fig');
        listName.add('Grape');
        listName.add('Apple');
        listName.add('Grape');
        listName.add('Fig');
        system.debug('whole List: ' + listName);
        Integer i = listName.size();
        Integer a;
        Integer b;
        List<string> secList = new List <String>();
        // for (a=0; a < listName.size(); a++){
        //     for (b=a+1; b < listName.size(); b++){
        //         if (listName.get(a)==listName.get(b)) {
        //             secList.add(listName.get(a));
        //         }
        //     }
        //     }

        for (String item: listName) {
            if (!secList.contains(item)) {
                secList.add(item);
            }
        }
        system.debug('sec ' + secList);
    }
}