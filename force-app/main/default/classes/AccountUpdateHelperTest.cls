@isTest
public class AccountUpdateHelperTest {
    @isTest
    private static void testMethod1() {
        Account ac1= new Account();
        ac1.Name= 'SoftInnovas';
        ac1.Website='www.soft.com';

        Account ac2= new Account();
        ac2.Name= 'SoftInnovas2';
        ac2.Website='www.soft2.com';

        test.startTest();
    
        List<Account> ac= new List<Account>{ac1, ac2};
        insert ac;
        list<account> accounts = [select id, name, website from account];
        System.assertEquals('www.soft2.com',  ac2.Website);

        system.assert(ac.size()>0);
        test.stopTest();
      

    //start teststartand then we using dml operation we makes 0 gov. limit and 
    //any insert, update and delete supposed to be starttest and stoptest

    }
}