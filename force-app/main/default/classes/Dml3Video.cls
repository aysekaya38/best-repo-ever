public with sharing class Dml3Video {
   public static void createMultileAccountContacts(integer count) {
       if(count<=0){
           return;
       }
       List<Account> listAcc= new List<Account>();
       for (Integer i = 0; i < count; i++) {
           Account acc = new account();
           acc.Name='SpaceZ';
           acc.Active__c='Yes';
           listAcc.add(acc);
           
       }
       if (!listAcc.isEmpty()) {
           insert listAcc; 
       }
       List<Contact> listCnt = new list<contact>();
       for (account acc : listAcc) {
           id accid= acc.id;
          for (Integer i = 0; i < count; i++) {
              contact c= new contact();
              c.LastName= 'Milet';
              c.AccountId=accid;
              listCnt.add(c);
              
          }
       }
       if (!listCnt.isEmpty()) {
           insert listCnt;
       }
       
   }
   public static void createUpdateAccountContact() {
       Account acc= [select id from account where name ='Default' limit 1];
       List<Contact> listCnt = [select id, accountid, name from Contact where AccountId= NULL];
       List<Contact> updateContactList= new List<Contact>();
       for (contact c : listCnt) {
           c.AccountId= acc.Id;
           updateContactList.add(c);
           System.debug('contact id is '+ c.Id);
           
       }
       if(!updateContactList.isEmpty()){
           update updateContactList;
       }
       
   }

}
