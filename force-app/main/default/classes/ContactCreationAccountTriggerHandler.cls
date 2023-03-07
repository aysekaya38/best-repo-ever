public with sharing class ContactCreationAccountTriggerHandler {
    public static void  ContactCreation(list<Account> triggerNew) {
        list<contact> listCon = new List<Contact>();
       for (account acc : triggerNew) {
        Contact newContact = new Contact(LastName= acc.Name + 'Con' , AccountId= acc.Id);
       // acc.name=newContact.Name;
      //  acc.AccountId= newContact.AccountId;
        listCon.add(newContact);

        
       }
       insert listCon;
        
    }
}