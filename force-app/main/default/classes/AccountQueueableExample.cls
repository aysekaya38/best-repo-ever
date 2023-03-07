public with sharing class AccountQueueableExample implements Queueable{
    public List<Account> accList ;
    //parameterized constructor
    public AccountQueueableExample(List<account> accList){
        this.accList= accList;
    }
    public void execute (QueueableContext context){
        for (account  acc : accList) {
            acc.Name=acc.Name+ '--SI';
            
        }
        update accList;
    }
   
   
}
