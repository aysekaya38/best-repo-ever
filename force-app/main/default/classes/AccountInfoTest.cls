@isTest
public with sharing class AccountInfoTest {
   @isTest
   private static void showAccountTest() {
      List<Account> accList= new List<Account>();
      Account ac= new Account();
      ac.Name= 'Target';
      accList.add(ac);
     

      Account ac1= new Account();
      ac1.Name='Walmart';
      accList.add(ac1);
      insert accList;

      List<Opportunity> opp1= new list<Opportunity>();
      

     for (Integer i = 0; i < 200; i++) {
      
      Opportunity op= new Opportunity();
      op.Name='opp 22';
      op.StageName='Closed Won';
      op.closeDate= Date.today().addMonths(2);
      if (op.CloseDate > Date.newInstance(2022, 09, 10)) {
        // op.AccountId= ac.Id;
         opp1.add(op);  
      }    
     }
     insert opp1;
     
      test.startTest();
      AccountInfo.showAccount();
      test.stopTest();
   }
}
