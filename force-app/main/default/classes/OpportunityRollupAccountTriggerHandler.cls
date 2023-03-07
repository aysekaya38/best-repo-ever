//Whenever an opportunity is created , updated and deleted then Roll up the opportunity amount to accounts annual revenue


public  class OpportunityRollupAccountTriggerHandler {
  public static void oppInsert(list<opportunity> triggerNew) {
    set<id> accIds= new set<id>();
    List<Account> accToBeUpdated = new List<Account>();
    for (opportunity opp : triggerNew) {
        if (opp.AccountId!= null) {
            accIds.add(opp.AccountId);
            
        }
        
    }
    accToBeUpdated.calculateAnnualRevenue(accIds);
    if (accToBeUpdated.isEmpty()) {
        update accToBeUpdated;
        
    }
  } 
 
}
