public  class IfElsePractice {
    public static void methodName(Integer a, Integer b, Integer c){
        if (a>b && a>c){
            system.debug(a);
        }
        if (b>c && b>a){
            system.debug(b);
        }
        if (c>b && c>a){
            system.debug(c);
        }
    }
    public static void secMethod(List <Decimal> ListName){
        Decimal max = ListName.get(0);
        for (Integer a=1; a<ListName.size(); a++){
           if(ListName.get(a)>max){
               max=ListName.get(a);
           }
            
            
            // for (Integer c = a+1; c<=ListName.size(); c++){
            //     //Decimal d = ListName.get(c);
            //     Decimal k = ListName.get(c);
            //     }
            // if (b>k) {
            //     system.debug(b);
            // }
        }
        system.debug(max);
    }
    public static void thirdMethod (List<Integer> reverseList){
        List<Integer> secondList = new List<Integer>();
        for (Integer ui=reverseList.size()-1; ui>=0; ui--){
            Integer k = reverseList.get(ui);
            secondList.add(k);
        }
        system.debug('reverse hali  ' + secondList);
    }
    public static void FourthMethod(Integer a, Integer b, Integer c){
        if (a>b && a>c){
            system.debug('Largest number: ' + a);
        }
        if (b>c && b>a){
            system.debug('Largest Number: ' + b);
        }
        if (c>a && c>b){
            system.debug('Largest number: ' + c);
        }
    }
    public static void FifthMethod(List <Decimal> ListName){
        Decimal MaxValue = ListName.get(0);
        for (Integer a = 1; a< ListName.size(); a++){
            if(ListName.get(a)> MaxValue){
                MaxValue = ListName.get(a);
                //system.debug('Maximum: ' + MaxValue);
            }
            //system.debug('MaxValue: ' + MaxValue);
        }
        system.debug('Max: ' + MaxValue);
    }
    public static void SixMethod(Integer i){
        Integer k = Math.mod(i,10);
        system.debug('Leftover: '  +k);
    }
}
