Custom_Notification__e evt= 
new Custom_Notification__e ();
evt.Message__c= 'Yahoo lead';
evt.Initiator__c= 'Lead Process Batch';
Eventbus.publish(evt);