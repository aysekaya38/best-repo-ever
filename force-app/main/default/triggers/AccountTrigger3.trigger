trigger AccountTrigger3 on Account(before insert, before update, after insert, after update) {
    // if(trigger.isBefore){
    //     system.debug('before insert/update trigger called');
    //     map<id, account> newAccountMap = trigger.newmap;
    //     map<id, account> oldAccountMap = trigger.oldmap;
    //     for(account eachAcc: trigger.new){
    //         boolean updateDesc = false;
    //         if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
    //             updateDesc = true;
    //         }
    //         if(trigger.isUpdate){
    //             Account oldAccount = oldAccountMap.get(eachAcc.ID);
                
    //             string oldAccountActive = oldAccount.Active__c;
    //             //check if active is updated
    //             //active is changed to 'Yes'
    //             if(eachAcc.Active__c == 'Yes' &&
    //                 oldAccountActive != 'Yes'
    //             ) {
    //                 updateDesc = true;
    //             }
    //         }
    //         if(updateDesc){
    //             eachAcc.Description = 'Account is now active. Enjoy!';
    //         }




    // if(trigger.isBefore){
    //     System.debug('Before insert/update trigger on Account object');
    //     for (Account eachAcc : Trigger.new) {
    //         if (trigger.isInsert && eachAcc.Active__c== 'Yes') {
    //             eachAcc.Description='Account is now active. Enjoy!';
                
    //         }
    //         if (trigger.isUpdate) {
    //             if (eachAcc.Active__c=='Yes'&& trigger.oldMap.get(eachAcc.Id).Active__c != trigger.newMap.get(eachAcc.id).Active__c) {
    //                 eachAcc.Description='Account is now active. Enjoy!'; 
    //             }   
    //         }  
        //}
    //}













    // if (trigger.isAfter&& trigger.isUpdate) {
        // map<id, account>newAccMap= trigger.newMap;
        // Map<Id, Account>oldAccMap= trigger.oldMap;
        // Set<Id> setOfAccIDs= newAccMap.keySet();
        // integer countWebsiteUpdated=0;
        // for(ID eachId: setOfAccIDs){
        //     account oldAcc= oldAccMap.get(eachId);
        //     string oldWebsite= oldAcc.Website;
        //     account newAcc= newAccMap.get(eachId);
        //     string newWebsite= newAcc.Website;
        //     if (oldWebsite!= newWebsite) {
        //         System.debug('for account '+ newAcc.Name+ ' new website '+ newWebsite);
        //         countWebsiteUpdated++;
        //     }

        //     }
        //     system.debug('# of account website updaetd = ' + countWebsiteUpdated);
        // }
    
    // System.debug('before insert trigger called');
    // System.debug('Before update trigger called');
    // if(trigger.isAfter&&trigger.isUpdate){
    //     map<id, account>newAccMap= trigger.newMap;
    //     Map<Id, Account>oldAccMap= trigger.oldMap;
    //     Set<Id> setOfAccIDs= newAccMap.keySet();
    //     for (ID eachId : setOfAccIds) {
    //         System.debug('--------------------');
    //         System.debug('each id= '+ eachId);
    //         account newAccount= newAccMap.get(eachId);
    //         System.debug('new acc name '+ newAccount.name);

    //         account oldAcc= oldAccMap.get(eachId);
    //         System.debug('old acc name= '+ oldAcc.Name);
            
    //     }
     }
    

