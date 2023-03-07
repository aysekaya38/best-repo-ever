//if in account user provides billing adress but not shipping adress write a logic populate shipping address wuth billing adress

public with sharing class accBillingShippingTriggerHandler {

        public static void AccBillingAdress(list<account> triggerNew) {
        
          for (account acc : triggerNew) {
              
                  if(acc.ShippingCity==null)
                  acc.ShippingCity=acc.BillingCity;
                  if(acc.ShippingCountry==null)
                  acc.ShippingCountry=acc.BillingCountry;
                  if(acc.ShippingPostalCode==null)
                  acc.ShippingPostalCode=acc.BillingPostalCode ;
                  if(acc.ShippingState==null)
                  acc.ShippingState=acc.BillingState ;
                  if(acc.ShippingStreet==null)
                  acc.ShippingStreet=acc.BillingStreet;
      
                 
                  
              
              
              
          }
        
       
      }
      }

