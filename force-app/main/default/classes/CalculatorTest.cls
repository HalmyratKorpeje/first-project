/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-28-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public  class CalculatorTest {
    @isTest
    public static void testMet(){
        Calculator objName = new Calculator();
        objName.added(5,8);
        system.assertEquals(13, objName.result);
        objName.sub(10,5);
        system.assertEquals(5, objName.result);
    }
    @isTest
    public static void dynamicCal (){
        Calculator objName = new Calculator();
        integer resultValue = objName.dynamicCalcMeth(10,20, 'addition');
        system.assertEquals(30, resultValue);
    }
}
