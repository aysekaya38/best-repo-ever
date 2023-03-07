public with sharing class dml1 {
   public static void createContact() {
       contact c = new contact();
       c.Salutation='Mr.';
       c.LastName='Must Melon 1';
       //DML
       insert c;
       c.MobilePhone='86298565';
       c.Email='m@gmail.com';
       update c;
       System.debug(c);
   }
   public static void createUpdateContact() {
    contact c = new contact();
    c.Salutation='Mr.';
    c.LastName='Must';
  insert c;
  System.debug('after dml c= '+ c);
    //DML
    c.FirstName='Melon';
    update c;
  System.debug('after dml c= '+ c);
   }
   public static void updateONEcontact() {
   list< contact> c1= [select id, firstName, lastName from contact WHERE lastName='Must'LIMIT 2];
     c1.FirstName='Elom';
      c1.Phone='8937953';
      c1.email='m@gmail.com';
      update c1;
   }
}
