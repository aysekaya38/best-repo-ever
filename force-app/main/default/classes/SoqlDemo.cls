public with sharing class SoqlDemo {
    public Static void accountSoql_1() {
    List<Account> listAcc = [Select id, name from Account WHERE Name like 'B%'];
    System.debug('account list= '+ listAcc);

    Account acc= [Select Id, Name from Account ORDER BY CreatedDate DESC LIMIT 1];
    System.debug('latest account created is '+ acc);



}
public static void accountSOQL_2(){
    Account acc = [Select id, name, phone , accountNumber from Account ORDER BY CreatedDate DESC LIMIT 1];

System.debug('latest created account is '+ acc);
String accName = acc.Name;
String accPhone= acc.Phone;
System.debug('accName= '+ accName +', phone number is '+accPhone);
System.debug('account number is '+acc.AccountNumber);
}
public static void accountSOQL_3() {
    List<Account> listAcc = [Select Id, Name, Phone, ShippingCity from Account ORDER BY CreatedDate DESC];
    System.debug('all accounts '+ listAcc);

   for (Account eachAccount : listAcc) {
       string accName= eachAccount.Name;
       String accPhone= eachAccount.Phone;
       System.debug('accName= '+ accName + ', phone is '+ accPhone);
       //System.debug('account number is '+ eachAccount.AccountNumber);
       string accShip =eachAccount.ShippingCity;
       System.debug(accShip);
       
   }
    
}
public static void accountSOQL_Filter() {
    string accNameFilter ='Salesforce Inc.';
    List<Account> listAcc= [select id, name FROM Account WHERE Name =:accNameFilter];
    System.debug(listAcc);
    
}
public static void childParent_Soql1() {
    List<Contact>listCnt = [select id, name , Account.Name FROM Contact WHERE Account.industry = 'Energy'];
    
    for (Contact eachContact : listCnt) {
        string accName = eachContact.Account.Name;
        System.debug('contact name is '+ eachContact.Name + ', its acc is '+ accName);
        
    }
    
}
public static void sampleSoql4() {
    List<Account> accountWithOppList = new List<Account>();
    accountWithOppList =[Select Name, AnnualRevenue, (SELECT Name, Amount FROM opportunities WHERE stageName='Closed Won') from Account where type = 'Customer - Direct'];
    for (Account acc : accountWithOppList) {
        System.debug('Account name '+ acc.Name+'and its revenue is : '+ acc.AnnualRevenue);
        for (opportunity opp : acc.Opportunities) {
            System.debug('opportunity name is '+ opp.Name);
            System.debug('Opportunity amount is '+ opp.Amount);
            
        }
        
    }
    
}
public static void soqlDemo5() {
    List<salesforce_project__c> listSP = [Select Id, Name, project_name__c,(select Name, subject__c, priority__c from salesforce_tickets__r) FROM salesforce_project__c];
    

integer totalHighPriorityST = 0;
for (salesforce_project__c eachSP : listSP){
    LIST<salesforce_ticket__c>listST = eachSP.salesforce_tickets__r;
    string spName = eachSP.Name;
    Integer totalST= listST.size();
    integer highPriorityST=0;
    for(salesforce_ticket__c eachST : listST){
        if(eachST.priority__c== 'High'){
            highPriorityST++;
            totalHighPriorityST++;
        }
    }
    System.debug('Project ID: '+spName + ',Total #ST: '+ totalST+ ',high priority ST: '+ highPriorityST);
}
System.debug('Total high priority tickets in the org '+ totalHighPriorityST);

}


}
