public  class practiceCollection2 {
    public void newMethod(){
       set <string> uniqueNameSet = new set <string>{'Tom', 'Jerry'};
       system.debug('the size of the set: ' + uniqueNameSet.size());
       uniqueNameSet.add('Masha');
       uniqueNameSet.add('Murray');
       boolean a = uniqueNameSet.contains('Hal');
       system.debug('contains my name: ' + a);
       boolean b = uniqueNameSet.IsEmpty();
       system.debug('is empty? ' + b);
       integer k;
       string bh;
       //for (k = 0; k< uniqueNameSet.size()-1; k++ ) {
       //    bh=uniqueNameSet.get(k);
       //    uniqueNameSet.remove(bh);
       //}
       system.debug('cleared set: ' + uniqueNameSet);
       List <string> ka = new List <string> = (uniqueNameSet)[0];
       system.debug(ka);
       //system.debug('get element: ' + uniqueNameSet.get[3]);

    }
}
//Set<String> cities = new Set<String> { 'Chicago', 'New York', 'Denver', 'San Francisco' };
//String aCity = new List<String> ( cities )[0];


// set is unordered grouping list is ordered grouping.
