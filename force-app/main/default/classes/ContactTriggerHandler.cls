public  class ContactTriggerHandler {
   public static void contactUpdateValidation1(List<contact> cntTriggerNew,List<contact> cntTriggerOld,
   Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){

   for(contact eachContact: cntTriggerNew){
      if(eachContact.LeadSource == 'Partner Referral'){
         eachContact.addError('Cannot update contact where lead source is Partner Referral');
      }
      
         
      }
     
      }
      public static void contactUpdateValidation2(List<contact> cntTriggerNew,List<contact> cntTriggerOld,
      Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap) {
         for(contact eachContact: cntTriggerNew){
         
      if (eachContact.LeadSource!= cntTriggerOldMap.get(eachContact.id).LeadSource ) {
         //eachContact.LeadSource.addError('CONNAT UPDATE LEAD SOUTCE');
         string customValidation= System.label.contactValidation2;
         eachContact.LeadSource.addError(customValidation);
         
      }

   }  
}
}
