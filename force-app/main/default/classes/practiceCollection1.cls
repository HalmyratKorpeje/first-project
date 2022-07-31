public  class practiceCollection1 {
    public void listMEthod(){
        List <String> colourList = new List <String>();
        colourList.add('Orange');
        colourList.add('Red');
        colourList.add('Blue');
        colourList.add('Yellow');
        colourList.add('Black');
        Boolean b = colourList.contains('Red');
        integer d = colourList.size();
        Integer c = d-1;
        string e = colourList.get(c);
        string f = colourList.get(3);
        system.debug('List of the Colours: ' + colourList);
        system.debug('The size of the List: ' + d);
        system.debug('Contains Red: ' + b);
        system.debug('The Last element of the List: ' + e.toUpperCase());
        system.debug('the fourth element of the List: ' + f.toUpperCase());
        List <String> colourCodes = new List <String>();
        colourCodes.add('F000');
        colourCodes.add('F001');
        colourCodes.add('F002');
        colourCodes.add('F003');
        colourCodes.add('F004');   
        string ab = colourCodes.get(0);
        string ab = 'Orange';
        string ac = colourCodes.get(1);
        string ac = 'Red';
        string ad = colourCodes.get(2);
        string ad = 'Blue';
        string ae = colourCodes.get(3);
        string ae = 'Yellow';
        string af = colourCodes.get(4);  
        string af = 'Black';
        system.debug(colourCodes);   
    }
}
