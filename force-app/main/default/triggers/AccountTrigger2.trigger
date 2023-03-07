trigger AccountTrigger2 on account (before insert, before update, after insert, after update) {
    if(trigger.isAfter &&trigger.isUpdate){
        AccOwnerContOwnerTriggerHandler.AccContactOwner(trigger.New, trigger.OldMap);

    }
    if(trigger.isInsert && trigger.isUpdate){
        AccOwnerContOwnerTriggerHandler.AccContactOwner(trigger.New, trigger.OldMap); 
    }
    // map<id, Account> trgNewMap= trigger.newMap;
    // map<id, Account> trgOldMap= trigger.oldMap;
    // if (Trigger.isInsert && Trigger.isBefore) {
    //     System.debug('BEFORE INSERT');
    //     System.debug('Before insert OLD MAP= '+trigger.oldMap);
    //     System.debug('Before insert new MAP= '+trigger.newMap);
    // }
    // if (Trigger.isInsert && Trigger.isAfter) {
    //     System.debug('AFTER INSERT');
    //     System.debug('Before insert OLD MAP= '+trigger.oldMap);
    //     System.debug('Before insert New MAP= '+trigger.newMap);
    // }
    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     System.debug('BEFORE UPDATE');
    //     System.debug('Before UPDATE OLD MAP= '+trigger.oldMap);
    //     System.debug('Before UPDATE NEW MAP= '+trigger.newMap);
    // }
    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     System.debug('BEFORE UPDATE');
    //     System.debug('Before UPDATE OLD MAP= '+trigger.oldMap);
    //     System.debug('Before UPDATE NEW MAP= '+trigger.newMap);
    // }

    // if (Trigger.isInsert && Trigger.isBefore) {
    //     system.debug('before update trigger fired'+ trigger.old);
    // }
    // if (Trigger.isInsert && Trigger.isAfter) {
    //     system.debug('after update trigger fired'+ trigger.old);
    // }
    // if (Trigger.isUpdate && Trigger.isBefore) {
    //     system.debug('before update trigger fired');
    // }
    // if (Trigger.isUpdate && Trigger.isAfter) {
    //     system.debug('after update trigger fired');
    // }
    // system.debug('---------END------------');

    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('trigger.new before insert = ' + trigger.new);
    // }
    // if (trigger.isInsert && trigger.isAfter) {
    //     //trigger.new -> record(s) which were responsible for firing the trigger
    //     system.debug('trigger.new after insert = ' + trigger.new);
    //     for (account each : trigger.new) {
    //         System.debug(each.CreatedDate);
            
    //     }
    //}
    //System.debug('After insert trigger called');
   
    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug('trigger.new After insert= '+ trigger.new);
    //     List<Account> newAcc= trigger.new;
    //     System.debug('Total account inserted= '+ newAcc.size() );
    //     for (ACCOUNT eachAcc : newAcc) {
    //         System.debug('Account id is = '+ eachAcc.Id +', account name is '+ eachAcc.Name);
            
    //     }
        
    // }

}