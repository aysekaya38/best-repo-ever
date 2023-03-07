AccountScheduble aSche= new AccountScheduble();
string cron= '0 0 13 * * ?';
System.schedule('schedule account job via cron' , cron, aSche);