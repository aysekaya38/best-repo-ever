//Account olusturdugumda opportunide olussun

public with sharing class AccountOpportunityTrigger {
    public static void accOpp(list<account> triggerNew) {
        list<Opportunity> opLis = new list< Opportunity>();
    for (account ac : [select id, name from account where Id in: triggerNew and id not in(select accountId from opportunity)]) {
        opLis.add(new opportunity(name= ac.name + ' Opportunity', stageName ='Prospecting', closeDate= system.today().addMonths(2), AccountId = ac.Id ));

        
    }
    insert opLis;    
    }
   
}
