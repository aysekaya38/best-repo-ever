//Next Activity date should be automatically populated with 'upcoming'Task Date if task is closed/ deferred update the next Activity Date with Open upcoming task

public with sharing class TaskTriggerHandler {
    public static void updateLeadNextActivityDate(list<task> triggerNew, List<Task> triggerOld,map<id,task> triggerNewMap,map<id, task> triggerOldMap ) {
        set<id> setOfLeadId = new set<id>();
        for (task t : triggerNew) {
            if (t.WhoId != null && t.WhoId.getSobjectType().getDescribe().getName()=='Lead' && t.ActivityDate != null &&(triggerOld==null ||triggerOld != null &&(t.activityDate != triggerOldMap.get(t.id).ActivityDate)||(t.Status!= (triggerOldMap.get(t.id).Status)))) {
                
            setOfLeadId.add(t.WhoId);   
        } 
    }
    if (setOfLeadId.isEmpty()) {
        return;
        
    }
    list<lead> allLeads= [select id,name,Next_Activity_Date__c, (select id, activityDate, status from tasks where status != 'Completed'and status !='Defered' order by activityDate limit 1) from lead where id in: setOfLeadId ];
    list<lead> updateLeads =new list<lead>();
    for (lead l : allLeads) {
        if (l.Tasks != null && !l.Tasks.isEmpty()) {
            task t =l.Tasks[0];
            if (t.ActivityDate>=date.today()) {
                l.Next_Activity_Date__c = t.ActivityDate;
                
            }else {
                l.Next_Activity_Date__c=null;
            }
           updateLeads.add(l);
            
        }else {
            l.Next_Activity_Date__c=null;
        }

      if (!updateLeads.isEmpty()) {
        update updateLeads;
      }  
    }
}
}