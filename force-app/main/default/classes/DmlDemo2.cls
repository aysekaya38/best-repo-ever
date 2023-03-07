public  class DmlDemo2 {
   public static void dmlMultipleRecordUpdate_right() {
       List<Account> listAcc= [select id, name ,description from account order ORDER BY CreatedDate DESC limit 150 ];
       list<Account> updateAccounts = new List<Account>();
       for (account acc : listAcc) {
           acc.Name+= 'vB';
           acc.Description='Update via bulk DML';
           updateAccounts.add(acc);


           
       } 
       if (!updateAccounts.isEmpty()) {
           update updateAccounts;
           
       }
       
   }
}
