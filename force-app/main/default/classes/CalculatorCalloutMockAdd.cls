@isTest
public with sharing class CalculatorCalloutMockAdd implements WebServiceMock {

    public void doInvoke(Object stub, Object request, 
    Map<string, object> response, string endpoint, string soapAction, string requestName,
    string responseNS, string responseName, string responseType){
        //SOAP TA EGER MOCK CLASS OLUSTURYORSAK BURASI SABIT INTERNETTEN ALIYORSUN
        //https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_callouts_wsdl2apex_testing.htm
        CalculatorServices.doAddResponse response_x= new CalculatorServices.doAddResponse();
        response_x.return_x= 3.0;
        response.put('response_x', response_x);
        
    }
}
