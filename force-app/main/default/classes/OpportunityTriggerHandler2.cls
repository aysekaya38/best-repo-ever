public with sharing class OpportunityTriggerHandler2 {
    public static ID createAccount(){
       Account ac= new Account();
       ac.Name='New Account';
       insert ac;
       return ac.id;
    }
    public static void createOpportunity(Id acId){
        List<Opportunity> oppList = new List<Opportunity>();
        Opportunity op1= new Opportunity();
        op1.AccountId=acId;
        op1.Name='New Opportunity 2022';
        op1.StageName='Prospecting';
        op1.CloseDate= System.today();//default date
        oppList.add(op1);

        Opportunity op2= new Opportunity();
        op2.AccountId=acId;
        op2.Name='New Opportunity 2023';
        op1.StageName='Qualification';
        op1.CloseDate= System.today();
        oppList.add(op2);

        Opportunity op3= new Opportunity();
        op3.AccountId=acId;
        op3.Name='new opp 2024';
        op3.StageName='Prospecting';
        op1.CloseDate= System.today();
        oppList.add(op2);
        insert oppList;
 
      
    }
    public static void createOpportunity (list<opportunity> listOpp){
        for(Opportunity opp1: listOpp){
            opp1.StageName='Prospecting';
            opp1.CloseDate=DATE.today();
        }
        update listOpp;
    
    }
   
}
