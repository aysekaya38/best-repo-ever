public with sharing class GetCaseController {
    @AuraEnabled(cacheable=true)
    public static List<Case> getCasesByAcc(string accId){
        try {
            return [SELECT CaseNumber,Type, Status, ClosedDate FROM Case WHERE AccountId = :accId WITH SECURITY_ENFORCED];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
