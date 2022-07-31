public  class collectionPractice3 {
    public void newMethod(){
        Map <Integer, String>  zipCodeToCityMap = new Map <Integer, String>();
        zipCodeToCityMap.put(100101, 'New Delhi');
        zipCodeToCityMap.put(101234, 'Istanbul' );
        zipCodeToCityMap.put(569023, 'New York City');
        zipCodeToCityMap.put(60159, 'Arlington Heights');
        zipCodeToCityMap.put(60656, 'Chicago');
        boolean a = zipCodeToCityMap.containsKey(204101);
        system.debug('contains zip code: ' + a);
        system.debug('set' + zipCodeToCityMap);
        system.debug('all the zip code: ' + zipCodeToCityMap.keyset());
        system.debug('all the values: ' + zipCodeToCityMap.values());
        system.debug('number of mappings: ' + zipCodeToCityMap.size());
        boolean n = zipCodeToCityMap.isempty();
        system.debug('is empty? ' + n);
        List<integer> first = new List <integer>();
        //integer ds = zipCodeToCityMap.keyset();
        //first = zipCodeToCityMap.keyset();
        //system.debug(first);
        //Set <Integer> uniqueZipCodeSet = new Set <Integer>();
        integer i;
        integer f;
        // map<Integer, String> k = new map <Integer, String>();
        //for (i=0; i < zipCodeToCityMap.size(); i++) {
//            k = zipCodeToCityMap.get(i);
          //  f = k.keyset();
          //first.add(zipCodeToCityMap.getKey(i));

          for (integer key : zipCodeToCityMap.keySet()) {
              first.add(key);
          }

        }

    }
}
