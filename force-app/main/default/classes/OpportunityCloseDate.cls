public  class OpportunityCloseDate {
  public static void OppotunityClsDate(List<Opportunity> oppTriggerNew, List<Opportunity> oppTriggerOld, map<id,Opportunity> oppMapNew, Map<Id,Opportunity> oppMapOld ) {
      if (trigger.isBefore && trigger.isUpdate) {
          for (Opportunity eachOp : oppTriggerNew ) {
              //close date eger 5 ise eger verirsek
              if (eachOp.CloseDate < oppMapOld.get(eachOp.Id).CloseDate) {
                  eachOp.CloseDate.addError('Close Date can not be update to less that what already provided');//eger birsey yazmaz isek eachOp tan sonra en altta error mesaji diger turlu .close date dersek close date te
                  
              }
              
          }
          
      }
      
  } 
}
