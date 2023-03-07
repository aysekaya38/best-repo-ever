public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account>        accTriggerNew,
                                                List<account> accTriggerOld,
                                                Map<id, account> accTriggerNewMap,
                                                Map<id, account> accTriggerOldMap){
        system.debug('inside handler method');
         for(account eachAcc: accTriggerNew){
            boolean updateDesc = false;
            if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(accTriggerOldMap != null){
                Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
                string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
                //active is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                    oldAccountActive != 'Yes'
                ) {
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description += 'Account is now active. Enjoy!';
            }
        }
    }
    public static void updateVipForAllAcontacts(list<account> accTriggerNew,
                                                 list<account> accTriggerOld, 
                                                 Map<id, account> accTriggerNewMap, map<id, account> accTriggerOldMap){
            system.debug('update all contact\'s VIP field');
            set<id> setAccIds = new Set<id>();
            for(account eachAcc: accTriggerNew){
                if(eachAcc.Vip__c != accTriggerOldMap.get(eachAcc.Id).Vip__c){// tek orta nokta id oldugu icin eski ve yeni vip lerde o yuzden set yapioz
                    setAccIds.add(eachAcc.Id);
                }
            }
//burda update olan vip lerin hepsini setAccIds le getirioz//get list of for accounts where VIP is updated
            List<contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in :setAccIds];//child to parent . ile oluyor// parent to child sunquesry ile oluyor ve s konuluyor ---r oluyor subquesry ici eger child ise

            //now we want to update contacts 
            for(contact eachContact : listContacts){
                Account newAccount = accTriggerNewMap.get(eachContact.account.id);
                boolean newAccVip = newAccount.vip__c;

                eachContact.vip__c = newAccVip;
                //eachContact.VIP__c= accTriggerNewMap.get(eachContact.account.id).newAccount.Vip_c;
            }
            if(!listContacts.isEmpty()){
                update listContacts;
            }


    }
    //accountta billiing country = america degil usa yazilsin
    public static void AccountBillingCounty(list<account> triggernew) {

    for (account acc : triggerNew) {
        if (acc.BillingCountry=='america'||acc.BillingCountry=='America'|| acc.BillingCountry=='AMERICA' ) {
            acc.BillingCountry='USA';
            
        }
        
    }
        
    }
    //mailing adress same as other adress.check box check ili ise ayni adres versin
    public static void AccountMailingAdressMailingAd(list<account> accTriggerNew,
                                                    list<account> accTriggerOld, 
                                                    Map<id, account> accTriggerNewMap, map<id, account> accTriggerOldMap){ 
       for (account eachAcc : accTriggerNew) {
          // if (eachAcc.Mailing_Adress_is_same_as_other_adress == true) {
               
           
             //eachAcc.ShippingAddress =  eachAcc.BillingAddress;
           eachAcc.ShippingCity=eachAcc.BillingCity;
           eachAcc.ShippingCountry=eachAcc.BillingCountry;
           eachAcc.ShippingPostalCode=eachAcc.BillingPostalCode;
           }  
       } 
    }
//}
