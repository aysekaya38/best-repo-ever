trigger AccountTrigger on Account (before insert, before update, after insert, after update, before delete, after delete, after undelete) {
    if (trigger.isUpdate && trigger.isBefore) {
        AccountAnnualRevenueTrigger.accBillingCon(trigger.New, trigger.NewMap);
        
    }
    if (trigger.isAfter&& trigger.isUpdate) {
        AccountAnnualRevenueTrigger.accBillingCon(trigger.New, trigger.OldMap);
        
    }
    if (trigger.isBefore && trigger.isDelete) {
        AccountAnnualRevenueTrigger.ActiveAccount(trigger.old);
        
    }
    if (trigger.isAfter && trigger.isUndelete) {
        AccountRecBinTriggerHandler.accRecBinEmail(trigger.New);
        
    }
    // if (trigger.isUpdate && trigger.isBefore) {
    //     AccountAnnualRevenueTrigger.accUpdate(trigger.New, trigger.OldMap);
        
    // }
    // if (trigger.isBefore && trigger.isInsert ) {
    //     accBillingShippingTriggerHandler.AccBillingAdress(trigger.New);
        
    // }
    // if (trigger.isBefore && trigger.isInsert) {
    //     AccountAnnualRevenueTrigger.AccAnnualRevenue(trigger.New);
        
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     AccountAnnualRevenueTrigger.accountContactSameName(trigger.New);
        
    // }


//if (trigger.isAfter){
   // System.debug(' trigger new after insert/update '+ trigger.new);
//}




    // if(Trigger.isAfter){
    //     if(Trigger.isUpdate || Trigger.isInsert){
    //         AccountTriggerHandler1.getKanyeQuote(Trigger.New, Trigger.oldMap);
    //     }
    // if (trigger.isUpdate && trigger.isBefore) {
    //     AccountTriggerHandler.AccountBillingCounty(trigger.new);
        
    // }
    // if (trigger.isAfter&trigger.isUpdate) {
    //     AccountOpportunityTrigger.accOpp(trigger.New);
        
     //}
    // if (trigger.isAfter&&trigger.isUpdate) {
    //     AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
    // }
    // if(trigger.isBefore){
    //     system.debug('Before insert/update trigger on Account object');
    //     AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     system.debug('before insert/update trigger end.');
    //     map<id, account> newAccountMap =trigger.newMap;
    //     map<id, account> oldAccountMap =trigger.oldMap;
    //     For(Account eachAcc: Trigger.new){
    //         boolean updateDesc =false;
    //         if(trigger.isInsert && eachAcc.Active__c=='Yes'){
    //         //JUST set the field value
    //             updateDesc =true;
    //             }
    //         if(trigger.isUpdate){
    //             Account oldAccount = oldAccountMap.get(eachacc.Id);
    //             string oldAccountActive =oldAccount.Active__c;
    //             if(eachAcc.Active__c=='Yes' && oldAccountActive !='Yes'){
    //                 updateDesc =true;
    //                 // system.debug(eachAcc.Active__c);
    //             }
    //             if(updateDesc){
    //                 eachAcc.Description ='Account is now active Enjoy!';
    //             }
    //         }
    //     }
    //  }

    // if (trigger.isBefore) {
    //     System.debug('Before insert/ update trigger on account object');
    //     map<id,Account> newAccountMap= trigger.newMap;
    //     Map<Id,Account> oldAccountMap= trigger.oldMap;
    //     for (account eachAcc : trigger.new) {
    //         if (trigger.isInsert&& eachAcc.Active__c=='Yes') {
    //             eachAcc.Description='Account is now active.Enjoy!';
                
    //         }
        
    //         if (trigger.isUpdate) {
    //             account oldAccount = oldAccountMap.get(eachAcc.Id);
    //             string oldAccountActive= oldAccount.Active__c;
    //             if (eachAcc.Active__c=='Yes'&& oldAccountActive !='Yes') {
                    
    //             }
    //             eachAcc.Description='Account is Now active.Enjoy!';
    //         }
            
       
        
    //  }
    // }

    // if (trigger.isBefore && trigger.isUpdate) {
    //     system.debug('Before update trigger of Account object');
    //     integer countWebsiteUpdated=0;
    //     for (account acc1 : trigger.new) {
    //         if (acc1.Website!= trigger.oldMap.get(acc1.id).Website) {
    //             System.debug(acc1.Website + ' Website updated');
    //            countWebsiteUpdated++; 
    //         }
            
    //     }
    //    System.debug(countWebsiteUpdated) ;
    // }
    // if(trigger.isBefore){
    //     system.debug('before insert/update trigger called');
    //     AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     System.debug('before insert update trigger end');
        
    // }
    // if (trigger.isBefore && trigger.isInsert  ) {
    //     System.debug('before insert trigger called'); 
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug('Before insert trigger called');
    // }
    // if (trigger.isBefore && trigger.isUpdate) {
    //     System.debug('Before update called');
        
    // }
//     if (trigger.isAfter && trigger.isUpdate) {
//         System.debug('After update trigger called');
//         AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//     }
// }
    
    
    /*//when will .isBefore True??
    System.debug('trigger.isBefore= '+ trigger.isBefore);
    System.debug('trigger.isAfter= '+ trigger.isAfter);
    if (Trigger.isAfter){

        System.debug('After insert  trigger called');
        }
        // when will .isAfter True??
    if (Trigger.isBefore) {
        System.debug('Before insert account trigger fired');
        
    }
    System.debug('----------');*/
   

} 
