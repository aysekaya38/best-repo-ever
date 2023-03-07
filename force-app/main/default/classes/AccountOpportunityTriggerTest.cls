@isTest
public with sharing class AccountOpportunityTriggerTest {
   @isTest
   private static void accOppTest() {
    Account acc1= new Account();
    acc1.Name='SI Test';
    acc1.Industry= 'Energy';

    Account acc2= new Account();
    acc2.Name='UI Test';
    acc2.Industry='Energy';

    Account acc3= new Account();
    acc3.Name='PI Test';
    acc3.Industry='Banking';//bunlar prnek data base orga gitmiyor calisip calismadigini denemek icin

    List<Account> listAccount= new list<account>{acc1, acc2, acc3};
    insert listAccount;

    // List<Opportunity> op= new List<Opportunity>();
   //   for (Integer i = 0; i < 50; i++) {
   //      Opportunity op1= new Opportunity();
   //      op1.Name= 'opp1';
   //      op1.CloseDate= Date.today();
   //      op1.StageName='Prospecting';
   //      acc1.Id= op1.AccountId;
        
   //      op.add(op1);
        
   //   }
     
    // insert op;

     test.startTest();
      AccountOpportunityTrigger.accOpp(listAccount);
      test.stopTest();
      Opportunity op=[select id, name, stageName, closeDate from Opportunity limit 1];
      System.assertEquals('Prospecting',op.stageName );

   }
}
