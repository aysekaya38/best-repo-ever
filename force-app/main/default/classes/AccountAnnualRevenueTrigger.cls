//while user creating an account , if annual revenue provided by user is less than 1000, then write a logic to throw an error to user ?

public with sharing class AccountAnnualRevenueTrigger {
    public static void AccAnnualRevenue(list<account> triggerNew) {// triggerNew= bu accounttaki butun recordlarin son hali //triggerOld= bu accounttaki butun recorlarin eski hali // triggerNewMap= id ile islem yapacaksak ve related record son hali //triggeroldMap :eski hali id li

       // List<Account> accList= new list<Account>();
        for (account accList : triggerNew) {
            if (accList.annualRevenue <1000) {
                accList.addError('Cannot be less 1000 account');    //object: account  // event: before insert
            }   
        }   
    }
    //when user created an account, write a logic to create contact with same name and associate account and contact
    public static void accountContactSameName(list<account> triggerNew) {
List<contact> conL= new list<contact>();

        for (account acc : triggerNew) {
            contact cn= new contact();//new instance
             cn.AccountId=acc.id;//baglama islemi
            //cn.FirstName= acc.Name;
            cn.LastName= acc.Name;
            conL.add(cn);     
        }
        if(conL.size()>0){
            insert conL; //object : account event: after insert
        }  
    } 
    //when user updates account record, if user changes account name, throw an error "account name once created cannot be modified"
    public static void accUpdate(list<account> triggerNew, map<id, account> triggerOldMap) {

        list<account> accList= new list<Account>();
        for (account acc : triggerNew) {
            if (acc.Name != triggerOldMap.get(acc.id).name) {

             acc.addError('You cannot change name .please call admin');
                
            }
            
        }
        
    } 
    //on user updating account record, if billing address is changed , update all its child contatcs mail address field same as account billing addess
    public static void accBillingCon(list<account> triggerNew, Map<Id,Account> triggerOldMap) {
        set<id> accAllBilllingUpdate= new set<id>();
        for (account acc : triggerNew) {
            if (acc.BillingStreet != triggerOldMap.get(acc.id).BillingStreet) {
                accAllBilllingUpdate.add(acc.id);
                
            }
        }
           list<account> con= [select id, name, BillingCity, BillingCountry,billingState,billingStreet, (select id, name from Contacts) from Account where Id in : accAllBilllingUpdate];
           list<contact> ConlistUpdate= new List<Contact>();
    
           for(account acc1: con){
            List<contact> cn= acc1.Contacts;
            for (contact con1 : cn) {
            con1.MailingCity=acc1.BillingCity;
            con1.MailingCountry=acc1.BillingCountry;
            //con1.MailingPostalCode=acc1.BillingPostalCode;
            con1.MailingState=acc1.BillingState ;
            con1.MailingStreet=acc1.BillingStreet ;
            ConlistUpdate.add(con1);
            }
        }
        if(!ConlistUpdate.isEmpty()){
            update ConlistUpdate;
        }
        
    }
    //active account should not be deleted
    public static void ActiveAccount(list<account> triggerOld) {
        for (account acc : triggerold) {
            if (acc.Active__c =='Yes' ) {
                acc.addError('It is active account you cannot be delete this account sorry');
                
            }
            
        }
        
    }
    //whenever user deletes account, send an conformation email to the user

//     public static void deletedAccEmail(List<Account> triggerOld) {
// list<messaging.SingleEmailMessage> sem= new list < Messaging.SingleEmailMessage>();
//         for (account acc : triggerOld) {
//             if (acc.IsDeleted) {

//                 Messaging.SingleEmailMessage emailObj= new Messaging.SingleEmailMessage();
//                 list<string> emailAdress= new list<string>();
//                 emailObj.add(Userinfo.getUserEmail());
//                 emailObj.Settoaddresses(emailAdress);
//                 emailObj.setSubject('Account has been succefully deleted '+ acc.Name);
//                 emailObj.setPlainTextBody('Hello...this account is deleting before delete please check it out ');
//                 sem.add(emailObj);


                
//             }
//             Messaging.sendEmail(sem);
//         }
        
   // }

}