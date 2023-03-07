@isTest
public with sharing class CalculatorCalloutTest {
    @isTest
    public static void doAddTest(){
        //1.prepare data
        //1.set mock
        test.setMock(WebServiceMock.class, new CalculatorCalloutMockAdd());
        //start test
        test.startTest();
        Double d1= CalculatorCallout.addition(1, 2);
        test.stopTest();
        System.assertEquals(3, d1);

    }
@isTest
    public static void subTest(){
    
        test.setMock(WebServiceMock.class, new CalculatorCalloutMockSubtract());

        test.startTest();
        Double d1= CalculatorCallout.substraction(10, 7);
        test.stopTest();
        System.assertEquals(3, d1);
        
    }
    @isTest
    public static void divTest(){
        test.setMock(WebServiceMock.class, new CalculatorCalloutMockDivision());

        test.startTest();
        Double d1= CalculatorCallout.division(30, 10);
        test.stopTest();
        System.assertEquals(3, d1);

        

    }
    @isTest
    private static void doMultiplyTest() {
        //prepare data
        //1. set mock
        Test.setMock(webservicemock.class, new CalculatorCalloutMockMultiplication());
        //start test
        Test.startTest();
        double d1 = CalculatorCallout.multiplication(1, 3);
        Test.stopTest();
        
        system.assertEquals(3, d1);
    }
}
