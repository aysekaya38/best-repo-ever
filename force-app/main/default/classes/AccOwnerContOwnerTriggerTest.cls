@isTest
private  class AccOwnerContOwnerTriggerTest {
    @TestSetup
   private static void testData() {
    Profile standardProfile = [select id, name from Profile where Name= 'Standard User'];
    User newUser= new User (Alias= 'stndr', Email= 'a@gmail.com',EmailEncodingKey='UTF-8', LastName='TestUser', LanguageLocaleKey='en_US', 
    LocaleSidKey='en_US', ProfileId = standardProfile.Id, 
    TimeZoneSidKey='America/Los_Angeles', UserName='standarduser@testclasses.com');
     System.runAs(newUser){
     Account acc= new account(name= 'acc');
     insert acc;
     Contact cn= new contact (LastName='Kaya', AccountId= acc.Id);
     insert cn;
     }
   }
   
}