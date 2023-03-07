List<Account> accList =[select id , name from account];
AccountQueueableExample age= new AccountQueueableExample(accList);
Id jobId= System.enqueueJob(age);
system.debug('jobId'+ jobId);