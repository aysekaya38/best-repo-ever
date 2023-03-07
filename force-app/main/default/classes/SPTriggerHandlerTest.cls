@isTest
public with sharing class SPTriggerHandlerTest {
    @isTest
   private static void testMethod1() {
    salesforce_project__c sp = new  salesforce_project__c();
    sp.project_name__c= 'Teach DM to falcons';
    sp.Description__c= 'All 50% are great learners';
    
    salesforce_project__c sp1 = new  salesforce_project__c();
    sp1.project_name__c= 'Teach DM to falcons';
    sp1.Description__c= 'All 50% are great learners';
    
    List<Salesforce_Project__c>listSp= new list<Salesforce_Project__c>{sp,sp1};
     insert listSp;
     set<id> spIds= new set<id>{sp.id,sp1.id}  ;
     test.startTest();
     SalesforceProjectTriggerHandler.updateProjectDescription(spIds);
     test.stopTest();

     List<Salesforce_Project__c> sps= [SELECT ID, Description__c FROM Salesforce_Project__c ];
     System.assert(SPS[0].Description__c.containsignoreCase('future'));
   }
}
