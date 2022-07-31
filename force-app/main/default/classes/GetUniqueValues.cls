public  class GetUniqueValues {
    public static void methodName(List<string> newList){
        for (Integer a=0; a<newList.size(); a++){
            for (Integer b = a+1; b<=newList.size(); b++){
                if (newList.get(a).equals(newList.get(b))){
                    system.debug('gaytalanyan value: ' + a);
                }
            }
        }








        // Set<String> secList = new Set<string>();
        // set<String> thirdList = new set<string>();
        // Integer a;
        // Integer d;
        // for (a=0; a<newList.size(); a++){
        //     string b = newList.get(a);
        //     secList.add(b);
        //     for (d=0; d<secList.size(); d++){
        //         string z = secList.get(d);
        //         if (b!=z){
                    
        //         }
        //     }
        // }
        // system.debug('set halinde: ' + secList);
    }
}
