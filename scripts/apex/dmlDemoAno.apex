DmlDemo2.dmlMultipleRecordUpdate_right();
DmlDemo.dmlMultipleRecordInsert_right();
DmlDemo.dmlMultipleRecordInsert_right2();

 Dml2Video.CreateContact();
 Dml2Video.updateOneOrphanContact();

 Dml3Video.createMultileAccountContacts(1);
 Dml3Video.createUpdateAccountContact();
  List<Account> listAcc = [select id, name, website from account order by CreatedDate limit 10];
    
       list<account> updateAccounts = new list<account>();

        integer counter = 0;
       for (account acc : listAcc) {
           
           if(counter < 5){
                acc.Website = 'newwebsite.com';
           } else {
               acc.name = acc.name + ' v2';
           }
           
           updateAccounts.add(acc);
           counter++;
       }
       if(!updateAccounts.isEmpty()){
           update updateAccounts;
       }
       
       