trigger ContactTrigger on Contact (before insert, before update, after insert, after update, after delete, after undelete) {

    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact c : trigger.new) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
            from account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.number_of_contacts__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }






















    // if (trigger.isBefore && trigger.isUpdate) {
    //     ContactTriggerHandler.contactUpdateValidation1(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    //     ContactTriggerHandler.contactUpdateValidation2(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    // }

    // List<Contact> newContact = trigger.new;
    // if (trigger.isAfter) {
    //     System.debug('all new contact- '+ newContact);
        
    //}

    // if (trigger.isAfter) {
    //     System.debug('trigger.new after insert/update= '+ trigger.new);
        
    // }
//}
//     if(trigger.isBefore){
//         System.debug('We are in Before trigger');
    
//     if (trigger.isInsert) {
//         System.debug('Before insert trigger called');
//     }
//     if (trigger.isUpdate) {
//         System.debug('Before update called');
        
//     }
// }
//     if (trigger.isAfter) {
//         System.debug('we are in AFTER trigger.SBNC');
//         if (trigger.isInsert) {
//             System.debug('Before insert trigger called');
            
//         }
//         if (trigger.isUpdate) {
//             System.debug('Before update called');
            
//         }
   }
   

