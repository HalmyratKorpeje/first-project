public   class employeeInfo {
    public string rankPrice(integer rank){
        string prize = '';
        if (rank == 1) { 
            prize = 'prize Gold';
            //system.debug('prize Gold');
        }
        else if(rank == 2){
            prize = 'prize Silver';

            //system.debug('prize Silver');
        }
        else if (rank == 3){
            prize = 'prize Bronze';

            //system.debug('prize Bronze');
        }
        else if ( rank >=4 && rank<10 ){
            prize = 'Prize: top 10 Certificate';
           // system.debug ( 'Prize: top 10 Certificate' );
        }
        else if ( rank > 10 ){
            prize = 'Prize: participation certificate';
           // system.debug( ' participation certificate ' );
        }
        else {
            prize = 'you got the wrong number';
            //system.debug('you got the wrong number');
        }
        return prize ;
    }
    //return prize();
   

}
















    // public void newMethod(){
    //     string a = 'Hello';
    //     if(a.length()>5){
    //         system.debug('normalny salamlasma');
    //     }
    //     else {
    //         system.debug('still not bad');
    //     }
    // }
//}









//     public string showInfo ( Integer studID ) {
//         map <integer, string> mapName = new map < integer, string>();
//         mapNAme.put(1, 'Berlin');
//         mapNAme.put(2, 'Denver');
//         mapNAme.put(3, 'Paris');
//         mapNAme.put(4, 'iceland');
//         return mapNAme.get(studID);
//     }
// }


















    // public string showInfo ( Integer empID ) {
    //     Map <Integer, String> mapName = new Map <Integer, String>();
    //     mapNAme.put(1, 'Mary');
    //     mapNAme.put(2, 'Meryem');
    //     mapNAme.put(3, 'Madhu');
    //     mapNAme.put(4, 'Hal');
    //     string empName = mapNAme.get(empID);
    //     return empName;
    //     //system.debug(mapNAme);
    // }
//}
