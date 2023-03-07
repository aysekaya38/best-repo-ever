//childToParentSOQL ve sampleSoql4 . we are doing soql in bith methods. we have to create multiple records in our test method before calling these methods.we have to create multiple record of acc and cont preferly more than 200 and call this method
@isTest
public with sharing class SoqlDemo2Test {
   
    @TestSetup
    
    private static void setupData() {
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
  
        List<Contact> ListContact= new List<Contact>();
        for (Integer i = 0; i < 300; i++) {
          Contact c = new contact();
          c.LastName = 'Test SOQL';
          if (i < 100) {
              c.accountid = acc1.id;
          } else if (i < 200) {
              c.accountid = acc2.id;
          } else if(i < 300){
              c.accountid = acc3.id;
          }
          listContact.add(c);
      }
      //in preparing data , we consumed few governor limits/Ex 2 dmls 303 DML rows some heap size, some cpu time etc
      insert listContact;
    }@isTest
    private static void soqlDemoTest1() {
        
    
      test.startTest();
      SoqlDemo.childParent_Soql1();
   
      test.stopTest();
    
    }
    //sampleSoql4()
//bu yukarida ikinci method ta yaptiklarimiz
//we have account and contact records(check all field properly)
//fetch sccount record
//update'type of accounts
//and crate related opportunity records.
    @isTest
    private static void sampleSoql4Test() {
        list<account> listAccounts = [select id, name, type from account];
        for (account acc : listAccounts) {
            acc.type = 'Customer - Direct';
        }
        update listAccounts;

        List<Opportunity> createOpps = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            Opportunity o = new Opportunity();
            o.Name = 'opp1';
            o.StageName = 'Closed Won';
            o.CloseDate = date.today();//required area yazmak zorundayiz
            if(i < 100){
                o.AccountId = listAccounts[0].id;
            }
            else if(i< 200){
                o.AccountId =  listAccounts[1].id;
            }
            else if(i< 300){
                o.AccountId =  listAccounts[2].id;
            }
            createOpps.add(o);
        }
        insert createOpps;

        Test.startTest();
        SoqlDemo.sampleSoql4();
        Test.stopTest();
    }
}

