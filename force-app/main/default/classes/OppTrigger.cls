//ooportunityde insert edildiginde type secilmemisse 'new customer ' otomatik secssin eger secildiyse secilen kalsin

public with sharing class OppTrigger {
 public static void oppTypeTrigger( List<Opportunity> TriggerNew ) {
     for (opportunity eachOpp : triggerNew) {
         if (eachOpp.type ==''|| eachOpp.Type==null) {
             eachOpp.Type= 'New Customer';
             
         }
       
         
     }
     
 }
}
