public with sharing class DmlDemo {
   public static void dmlInsertDemi_stndObj() {
       Account acc= new Account();
       acc.Name='SofInnovas';
       acc.Site='www.Softinnovas.com';
       acc.Description= 'Salesforce Bootcamp';

       insert acc;
       System.debug(acc);

       
   }
   public static void dmlInserDemo_cstmObj() {
       salesforce_project__c sp = new  salesforce_project__c();
       sp.project_name__c= 'Teach DM to falcons';
       sp.Description__c= 'All 50% are great learners';
       insert sp;
       
   }
   public static void dmlUpdateDemo_1() {
       Account acc= new account();
       acc.Name='SoftInnovas';
       insert acc;

       acc.Name= 'Salesforce Inc.';
       update acc;
       
   }
   public static void dmlUpdateDemo_3() {
       Account acc= [select id, name FROM Account WHERE name= 'SoftInnovas' ORDER BY CreatedDate desc LIMIT 1];
       acc.Name='SoftInnovas Inc.';
       update acc;
       System.debug('updated acc '+  acc);
       
   }
   public static void dmlDmo_2() {
       Account acc= [select id, name From Account where name='Salesforce Inc.' LIMIT 1];
       System.debug('acc id is '+ acc.Id);
        Contact cnt= new Contact();
        cnt.LastName='Biden';
        cnt.AccountId= acc.id;
        insert cnt;
       
   }
   public static void dmlMultipleRecordInsert_right() {
       List<Account> listAcc= new List<Account>();
       account acc1= new account();
       acc1.Name='bulk acc 1';
       listAcc.add(acc1);

       account acc2= new account();
       acc2.Name='bulk acc 2';
       listAcc.add(acc2);

       account acc3= new account();
       acc3.Name='bulk acc 3';
       listAcc.add(acc3);

       insert listAcc;
       
   }
   public static void dmlMultipleRecordInsert_right2() {
       List<Account> listAccount = new List<Account>();
       Account acc= new Account();
       acc.Name= 'SoftInnovas-10Sept v';
       acc.AccountNumber= 'ACSI-1';
       acc.Active__c= 'Yes';
       System.debug('before saving acc= '+ acc);
        listAccount.add(acc);

       for (Integer i = 0; i <4; i++) {
          
           Account acc2= new Account();
           acc2.Name= 'SoftInnovas v '+i;
           acc2.AccountNumber='ACSI-2'+i;
           acc2.Active__c='Yes';
           listAccount.add(acc2);
       }

        
           System.debug('size of list'+ listAccount.size());
           if (!listAccount.isEmpty()){
                insert listAccount;
           }
       }
       
   }

