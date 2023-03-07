try{
Account a= new account();
insert a;
}catch(DmlException  dex){
System.debug('DML went wrong buddy');
}
CATCH(Exception EX){
    System.debug('SOMETHING WENT WRONG BUDDY');
}
System.debug('Apex is SIMPLE');