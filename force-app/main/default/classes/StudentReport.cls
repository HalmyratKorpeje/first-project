public  class StudentReport {
    public string  methodName(string FirstName, string LastName, Integer ClassYear){
        string Report;
        Report = FirstName + LastName;
        return Report;
    }
    public Double newMethodName ( Double a, Double b, String c ){
        String d = 'Addition';
        String e = 'Subtraction';
        String f = 'Division';
        String g = 'Multiplication';
        Double  h;
        Integer p;
        switch on c {
            when (c == d){
                h = a + b;
            }
            when (c == e) {
                h = a - b;
            }
            when (c == f){
                h = (Double) a / (Double) b;
            }
            when (c == g){
                h = a * b;
            }
        }
        return h;
    }
}
