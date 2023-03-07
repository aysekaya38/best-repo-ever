
//Burda SOQL that returns all the accounts without any contact
select id, name  from account where id not in(select accountId from contact);
//create a query that returns all  account of the records 1. with more than 100 employees and whose billing city is not null

select id, name, BillingCity, NumberOfEmployees from account where  NumberOfEmployees >100 and BillingCity  != null;

//create a query that is accesing a varibale in soql queries
string accoutName= 'Red House';
Account[] acArray= [select id, name from account where name =:accoutName] ;
System.debug(acArray);

//query i for un icinde kullanma
//List<Account> acList=[select name from account];
for(account ac : [select name from account]){
    System.debug(ac);
}