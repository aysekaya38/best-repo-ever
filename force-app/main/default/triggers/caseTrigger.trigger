trigger caseTrigger on Case (before insert, before update) {
if (trigger.isInsert) {
    System.debug('Before insert case');
}
if (trigger.isUpdate) {
    CaseTriggerHandler.countTriggerExecution++;
    System.debug('# of times trigger executed: '+ CaseTriggerHandler.countTriggerExecution);
    CaseTriggerHandler.countRecordsUpdated += trigger.size;
    System.debug('# of records updted: '+ CaseTriggerHandler.countRecordsUpdated);
    
}





    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     system.debug('before update trigger fired'+ trigger.old);
    // }
    // if (Trigger.isUpdate && Trigger.isAfter) {
    //     system.debug('after update trigger fired'+ trigger.old);  
    // }
    // if (trigger.isAfter) {
    // if (trigger.isUpdate) {
    //     List<Case> oldCase= trigger.old;
    //     list<case> newCase= trigger.new;
    //     for (case eachCase : oldCase) {
    //         System.debug('OLD case id= '+ eachCase.id + ', old  case name '+ eachCase.Subject);
            
    //     }
    //     for (case  oldC : newCase) {
    //         System.debug('new Case '+ oldC.Id +'NAME IS '+ oldC.Subject);
            
    //     }
    // }
    // }
}