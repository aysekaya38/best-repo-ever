public with sharing class OpportunityController {
   @AuraEnabled(cacheable=true)
   public static List<Opportunity> getOpp(string stage){
   return [SELECT Name, Type, StageName, Amount, CloseDate FROM Opportunity WHERE StageName =: stage WITH SECURITY_ENFORCED];
  
  
}
}
