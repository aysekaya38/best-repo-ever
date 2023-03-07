Account acc= [select id, ownerId from account where industry = 'Biotechnology' limit 1];
System.debug(acc.id);
Map<String,Object> inputs = new Map<String,Object>();
inputs.put('AccountId', acc.Id);
inputs.put('AccountOwnerId', acc.OwnerId);
Flow.Interview flow = new Flow.Interview.Account_Updates(inputs);
flow.start();
//bunu process bullder ve flow yapmistik onun icin yaptik