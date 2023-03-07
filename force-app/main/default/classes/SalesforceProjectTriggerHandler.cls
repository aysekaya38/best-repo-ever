//when salesforce project is created- update its description and append'Updated from future' to actual description.implement using future method
//cretae handler and trigger for dfproject


public  class SalesforceProjectTriggerHandler {
    public static void createDefaultSalesforceTicket(List<Salesforce_Project__c> spTriggerNew){
        try{
             List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
            
 
             for(Salesforce_Project__c sp: spTriggerNew){
                DefaultTicketInfo__c ticketInfo= DefaultTicketInfo__c.getOrgDefaults();
                
                 Salesforce_Ticket__c st = new Salesforce_Ticket__c();
                 st.Subject__c = ticketInfo.Subject__c;
                 st.Description__c = ticketInfo.description__c;
                 st.Salesforce_Project__c = sp.Id;
                 st.Priority__c = 'High';
                 listST.add(st);

             }
     
             if(!listST.isEmpty()){
                 insert listST;
             }
        } catch(Exception ex){
            for (salesforce_project__c sp : spTriggerNew) {
                sp.addError('Error in default ticket creation. Please contact your administrator');
            }
        }
       
    
      
   }
   @future
   public static void updateProjectDescription(set<id> setProjectIds) {
     list<Salesforce_Project__c> lstSp= [select id, description__c from salesforce_Project__c where id in :setProjectIds];
     for(Salesforce_Project__c spRecord: lstSp)  {
         spRecord.description__c= spRecord.description__c += '.update from future!';
     } 
     System.debug('sp to update= '+ lstSp) ;
     update lstSp; 
}
// Salesforce_Project__c updading status as completed update ticket status completed
public static void spCompletedStatus(List<Salesforce_Project__c> spTriggerNew, 
   List<Salesforce_Project__c> spTriggerOld,
   Map<id, Salesforce_Project__c> spTriggerNewMap,
   Map<id, Salesforce_Project__c> spTriggerOldMap) {
       //get set<id> where status is changed.
       set<id> spIds = new set<id>();
       for (salesforce_project__c sp : spTriggerNew) {
           //if new record status != old record status
           //status is changed to 'Complated'
            if(sp.Status__c != spTriggerOldMap.get(sp.id).Status__c
            && sp.Status__c == 'Completed'){
                spIds.add(sp.Id);
            }
       }
       if(!spIds.isEmpty()){
           //call future method
           updateTicketStatusCompleted(spIds);
           
       }
   }
   @future
   private static void updateTicketStatusCompleted(set<id> spIds) {
       list<Salesforce_Ticket__c> listSt=[select id, status__c, Salesforce_Project__c from Salesforce_Ticket__c  where Salesforce_Project__c in :spIds and  status__c != 'Completed'];
       for (salesforce_ticket__c st : listST) {
           st.Status__c = 'Completed';
       }
       if (!listST.isEmpty()) {
           update listST;
       }
   }
   
   }
