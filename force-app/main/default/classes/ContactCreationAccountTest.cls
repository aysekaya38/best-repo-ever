@isTest
private with sharing class ContactCreationAccountTest {
    @isTest
    private static void ContactCreationTest() {
        Account acc = new account(Name= 'Test Account', Type ='Prospect');
        test.startTest();
        insert acc;
        test.stopTest();

        Account insertAcc = [select id, name from account limit 1];

        List<Contact> con = [select id, account.name from contact];
        System.assertEquals(1, con.size(), 'Only one contact should present');
        system.assertEquals(insertAcc.Name, con[0].Account.name, 'Account name does not match');
        
    }
}