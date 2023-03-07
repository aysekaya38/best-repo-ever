@isTest
public class AccountQueueableExampleTest {
    @TestSetup
    static void setup(){
        List<Account> accounts= new List<Account>();
        //add 100 acc
        for (Integer i = 0; i < 100; i++) {
            accounts.add( new Account(name= 'Test  Account'+i, Phone='93740374'));
            // Account a1= new Account();
            // a1.name= 'test account a1'+a1;
            
            
        }
        insert accounts; 
    }
    @isTest
 static void methodName() {
     List<Account> accs=[select id, name from account];
     test.startTest();
     AccountQueueableExample aq= new AccountQueueableExample(accs);
     System.enqueueJob(aq);
     Test.stopTest();
     Integer count=[select COUNT() from account where name like '%SI%'];
     System.assertEquals(100, COUNT);
    
}


}
