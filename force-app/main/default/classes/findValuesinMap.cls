public   class findValuesinMap {
    public static void methodName(){
        Map<string,Decimal> mapName = new Map<string,Decimal>();
        mapName.put('AUD',0.73);
        mapName.put('CAD', 0.78);
        mapName.put('EUR', 1.13);
        mapName.put('NZD', 0.68);
        mapName.put('INR', 0.013);
        mapName.put('SAD', 1.56);
        system.debug('whole List: ' + mapName);
        Set<String> keySets = new Set<String>();
        List<Decimal> valuesy = new List<Decimal>();
        keySets = mapName.keySet();
        valuesy = mapName.values();
        system.debug(keySets);
        system.debug(valuesy);
        Integer k;
        Decimal p;
        for (k = 0; k<= valuesy.size()-1; k++){
            p= valuesy.get(k);
            system.debug('tek tek halinde: ' + p);
           
            }
        }
    }
}