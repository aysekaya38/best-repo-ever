List<Account> ListAcc= [select id,name from account];
string accJson=JSON.serialize(ListAcc);
System.debug(accJson);