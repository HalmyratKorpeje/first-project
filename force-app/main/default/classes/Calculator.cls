/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-28-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public  class Calculator {
    public Integer a;
    public Integer b;
    public Integer result;

    public void  added(Integer c, Integer d) {
        result = c+d;
        system.debug('Added vaue: '+ result);
    }
    public void sub(){
        result = a-b;
        system.debug('Sub Value: ' + result);
    }
    public void multiply(){
        result = a*b;
        system.debug('Multiply value: '+ result);
    }
    public void division(){
        result = a/b;
        system.debug('divided Value: ' + result);
    }
    public Integer dynamicCalcMeth(Integer num1 , Integer num2, string operation){
        Integer result;
        if (operation.equalsIgnoreCase('addition')){
            result = num1 + num2;
        }
        else if (operation.equalsIgnoreCase('substraction')){
            result = num1 - num2;
        }
        else if (operation.equalsIgnoreCase('multiplication')){
            result = num1 * num2;
        }
        else if(operation.equalsIgnoreCase('division')){
            result = num1/num2;
        }
        return result;
    }
}