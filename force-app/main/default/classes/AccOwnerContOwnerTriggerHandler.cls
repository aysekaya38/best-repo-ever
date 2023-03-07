public  class AccOwnerContOwnerTriggerHandler {
    public static void AccContactOwner(List<Account> triggerNew, map<id, account> triggerOldMap) {
        List<Id> acc = new list <Id>();
       for (Account accL : triggerNew) {
        if (accL.ownerId != TriggerOldMap.get(accL.Id).ownerId) {
            acc.add(accL.Id);
            
        }
        
       }
       if (acc.size() !=0) {
        List<Contact> conL= [select id, OwnerId, AccountId from Contact where accountId IN :acc];
        for (contact  cn : conL) {
            cn.OwnerId= triggerOldMap.get(cn.AccountId).OwnerId;
            
        }
        update conL;
        
       }
        
    }
}