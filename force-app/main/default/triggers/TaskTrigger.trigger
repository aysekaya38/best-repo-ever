trigger TaskTrigger on Task (before insert, before update, after insert, after update) {
if (trigger.isAfter && trigger.isUpdate) {
    TaskTriggerHandler.updateLeadNextActivityDate(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
}
}