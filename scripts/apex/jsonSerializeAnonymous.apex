Account a = new account();
a.Name = 'Mona';
a.Phone = '';
a.AnnualRevenue = 0.90973819;

Account b = new Account();
b.Name = 'Lisa';
b.Phone = '93842084';
b.Site = '';

List<Account> ab = new List<Account>();
ab.add(a); 
ab.add(b);
String accountJson1 = JSON.serialize(ab);
System.debug(accountJson1);

//ex 2
list<account> listAccount = [select id, name, phone, site, annualrevenue from account limit 5];
string accountJSON22 = JSON.serialize(listAccount);
system.debug(accountJSON22);