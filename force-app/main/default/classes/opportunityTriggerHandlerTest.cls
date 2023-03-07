@isTest
public with sharing class opportunityTriggerHandlerTest {
    @isTest
    private static void upOpDesTest() {
        List<Opportunity> oppList = new List<Opportunity>();
        Opportunity op1= new Opportunity();
    
        op1.Name='New Opportunity 2022';
        op1.StageName='Prospecting';
        op1.CloseDate=Date.today();//default date
        op1.Description='New Opp1';
        op1.IsPrivate=Boolean.valueOf('Yes');
        oppList.add(op1);

        Opportunity op2= new Opportunity();
        op2.Id='0068c00000ow4bOAAQ';
        op2.Name='New Opportunity 2023';
        op2.StageName='Qualification';
        op2.CloseDate= Date.today();
        op2.Description= 'New Op 2';
        op2.IsPrivate=Boolean.valueOf('No');
        oppList.add(op2);
        insert new List<Opportunity>{op1, op2};
        Map<Id,Opportunity> oppMap= new Map<Id,Opportunity>([select id, name from Opportunity]);


        test.startTest();
        OpportunityTriggerHandler.upOpDes(oppList, oppList, oppMap, oppMap);
        test.stopTest();
        System.assertEquals('New Opp1', OpportunityTriggerHandler.upOpDes(oppList, oppList, oppMap, oppMap) );
    }
}
