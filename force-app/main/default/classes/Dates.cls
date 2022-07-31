public class Dates {
    public void method(){
        Date anyDate = Date.newInstance(1998, 8, 28);
        system.debug('My date: ' + anyDate);
    }
    public void secMethod (){
        Time secDate = Time.newInstance(8, 37, 45, 30);
        system.debug('My time: ' + secDate);
    }
    public void thirdDateTime (){
        DateTime thirdDateTime = DateTime.newInstance(2001, 03, 3, 8, 38, 13);
        system.debug('My dateTime: ' + thirdDateTime);
    }
    public void fourthMethod(){
        Date fourDate1 = Date.newInstance(1965, 6, 27);
        Date b = fourDate1.addDays(24);
        system.debug('original date: ' + fourDate1);
        system.debug('last result: ' + b);
    }
}








// public with sharing class Dates {
//     public void datepractice(){
//         Date first = Date.newInstance(2004, 08, 24);
//         system.debug('date: ' + first);
//     }
//     public void minprac (){
//         Time second = Time.newInstance(4, 33, 16, 54);
//         system.debug('time: ' + second); 
//     }

//     public void third (){
//         DateTime wagtgun = DateTime.newInstance ( 2008, 04, 18, 9, 34, 48 );
//         system.debug(wagtgun);
//     }
//     public void fourth (){
//         Date newdate = Date.newInstance(2022, 06, 18);
//         Date secDate = Date.addDays(4);
//         system.debug ('our added date:' + secDate); 

//     }
    
    
// }
