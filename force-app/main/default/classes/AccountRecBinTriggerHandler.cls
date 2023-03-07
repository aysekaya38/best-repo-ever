//send an email to user , when user resores an account from recycle bin.SALESFORCE ONLY HAVE AFTER UNDELETE NO BEFORE DELETE THAT'S DO IMPORTATNT. Trigger.old/oldmap is not availble in undelete. trigger new/newMap is availbale in undelete

public with sharing class AccountRecBinTriggerHandler {
    public static void accRecBinEmail(list<account> triggerNew) {
        list<Messaging.SingleEmailMessage> emailObjs= new List<messaging.SingleEmailMessage>();
        for (account acc : triggerNew) {
            Messaging.SingleEmailMessage abc= new Messaging.SingleEmailMessage();
            List<string> emailAddress= new list<string>();
            emailAddress.add(System.UserInfo.getUserEmail());
            abc.setToAddresses(emailAddress);
            abc.setSubject('acc has been succesfully restored'+ acc.Name);
            abc.setPlainTextBody('Hello , account is undelete position now');
            emailObjs.add(abc);
            system.debug(abc);
            
        }
        Messaging.sendEmail(emailObjs);
        System.debug(emailObjs);

        
    }
}
