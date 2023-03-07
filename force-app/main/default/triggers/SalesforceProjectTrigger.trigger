
trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, after update, before update) {
   if (trigger.isAfter && trigger.isInsert) {
       System.debug('trigger called');
   SalesforceProjectTriggerHandler.updateProjectDescription(trigger.newMap.keySet());
   System.debug('Future method called already .second method calling.');
    SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(Trigger.New);
   }
   if (trigger.isAfter && trigger.isUpdate) {
    SalesforceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}
}