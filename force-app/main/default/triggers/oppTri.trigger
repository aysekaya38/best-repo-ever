trigger oppTri on Opportunity (before update,  before insert, after update, after insert) {
if (trigger.isBefore&& trigger.isInsert) {
  OppTrigger.oppTypeTrigger(Trigger.New);
  
}
If(trigger.isUpdate){
  OpportunityTriggerHandler2.createOpportunity(trigger.new);
}



//     if(trigger.isBefore&& trigger.isUpdate){
//         for (opportunity eachOp : trigger.new) {
//            if (eachOp.StageName != trigger.oldMap.get(eachOp.id).StageName && eachOp.Amount != trigger.oldMap.get(eachOp.Id).Amount ) {
//             eachOp.Description='stage and amount updated';
//              System.debug(eachOp.Name+' '+eachOp.Description+' '+eachOp.StageName+' '+ eachOp.Amount+ 'is updated with that '+trigger.oldMap.get(eachOp.id).StageName+' and '+trigger.oldMap.get(eachOp.Id).Amount  );
            
//            }
          
//         else  if  (eachOp.StageName!= trigger.oldMap.get(eachOp.id).StageName) {
//             eachOp.Description='Stage updated';
//              System.debug(eachOp.Name+' '+eachOp.description+' '+trigger.oldMap.get(eachOp.id).StageName+ 'updated with that  '+eachOp.StageName) ;      
//             }
           
          
//          else  if(eachOp.Amount!=trigger.oldMap.get(eachOp.Id).Amount) {
//            eachOp.description='Amount updated';
//            System.debug(eachOp.Name+' '+eachOp.Description + ' '+eachOp.Amount+'updated with that '+ trigger.oldMap.get(eachOp.Id).Amount );
           
//          }else {
//            eachOp.description='updated but stage and amount not updated';
//             System.debug( eachOp.description);
//           }
          
//         }
//     }

// }



//     List<Opportunity> oppTriggerNew = Trigger.new;
//     List<Opportunity> oppTriggerOld = Trigger.old;
//     Map<id,Opportunity> oppMapNew = Trigger.newMap;
//     Map<Id,Opportunity> oppMapOld = Trigger.oldMap;

//  OpportunityCloseDate.OppotunityClsDate(oppTriggerNew, oppTriggerOld, oppMapNew, oppMapOld);
    
    
    // if (trigger.isBefore && trigger.isUpdate) {
       
    //     System.debug('Before insert'+ trigger.old);
    // }

}