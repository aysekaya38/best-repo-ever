public with sharing class accountInvocable {

    @invocableMethod(label= 'Delete Closed Opps' description= 'Delete all the closed opportunities when an account goes inactive or hold' category='Account')
   public static void deleteOpp(list<id> accountIds) {
    List<Opportunity> opList= [select id, name from Opportunity where AccountId in: accountIds and stageName in ('Closed Lost', 'Closed Won')];
  

    if(!opList.isEmpty()){
        delete opList;
    }
   

    
   }
}
