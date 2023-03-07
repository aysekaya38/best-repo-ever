@isTest
public class DmlDemoTest {
    @isTest
private static void dmlDemoTest1() {
    DmlDemo.dmlInsertDemi_stndObj();
    List<Account>listAcc=[select id, Name from account where name='SofInnovas'];
    System.assertEquals(1, listAcc.size());
    System.assertEquals('SofInnovas', listAcc[0].Name);
    
}
@isTest
private static void dmlDemoTest2() {
    DmlDemo.dmlInserDemo_cstmObj();
    List<salesforce_project__c>listAcc=[select id, project_name__c,Description__c from salesforce_project__c where project_name__c ='Teach DM to falcons' and Description__c='All 50% are great learners' ];
    //and Description__c='All 50% are great learners'
    System.assertEquals('Teach DM to falcons', listAcc[0].project_name__c);  
   System.assertEquals('All 50% are great learners', listAcc[0].Description__c); 
   
}
@isTest
public static void dmlDemoUpdateTest3() {
   
    account acc= new account();
    acc.Name='Salesforce Inc.';
    insert acc;
    DmlDemo.dmlDmo_2();
    List<Contact> listCn=[select id, lastName from contact];
   
    System.assertEquals(1, listCn.size());
    System.assertEquals('Biden', listCn[0].LastName);
  
}
// @isTest
// private static void nameRecordTest() {

    
// }
    
}




