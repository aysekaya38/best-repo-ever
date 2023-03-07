public  class OpportunityTrigger {
    public static void oppHandler(list<opportunity> opTriggerNew ) {
        if (trigger.before && trigger.insert) {
            for (opportunity eachOpp : opTriggerNew) {
                  
        System.debug('Opportunity Name is '+ opTriggerNew.get(eachOpp.id).name + ' opportunity Amount '+ opTriggerNew.get(id).CloseDate + ' Total number '+ opTriggerNew.get(id).Amount );
            }
        }   
    }
}
