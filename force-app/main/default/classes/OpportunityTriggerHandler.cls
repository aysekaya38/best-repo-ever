public with sharing class OpportunityTriggerHandler {
    public static void upOpDes(list<opportunity> opTriggerNew, list<Opportunity> opTriggerOld, map<id, opportunity> mapNewTrigger, map<id, opportunity> mapOldTrigger) {
        for (Opportunity eachOp : opTriggerNew) {
            Boolean updateDesc= false;
            if (mapOldTrigger == 'No' && eachOp.IsPrivate=='Yes') {
                updateDesc=true;
                //can you see changes
                
            }
            if (mapOldTrigger!='No') {
                Opportunity oldOpp= mapOldTrigger.get(eachOp.Id);
                String oldOpPriv= oldOpp.IsPrivate;
                if (eachOp.isPrivate=='Yes'&& oldOpPriv != 'Yes') {
                    updateDesc= true;
                }
                if (updateDesc) {
                    eachOp.Description='opportunity is Private now';
                    
                }
            }
            
        }

        //update annual revenue of an account--annua revenue must be equal to sum of all the amounts of the related closed won opp
       
            
        }
        public static void oppClo(list< account> triggerNew) {
            
        
    }
    
}
