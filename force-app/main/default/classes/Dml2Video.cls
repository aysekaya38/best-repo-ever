public  class Dml2Video {
public static id createAccount() {
    account acc= new Account();
    acc.name='Supr';
    insert acc;
    return acc.id;
    
}
public static void CreateContact() {
    createAccount();
    Contact c = new contact();
    c.LastName='Daily';
    c.AccountId= createAccount();
    insert c; 
}
public static void updateOneOrphanContact() {
    Account acc= [select id from account where name = 'Supr' limit 1];
    contact c =[select id from contact where AccountId = NULL limit 1];
    c.AccountId= acc.Id;
    update c;
    System.debug('c= '+ c);
    
    
}
}
