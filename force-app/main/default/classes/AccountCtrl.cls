public with sharing class AccountCtrl {
   @AuraEnabled(cacheable= true)

   public static list<Account> getBiotechAccounts(){
   List<Account> accounts=[SELECT Name,Type,Industry, AnnualRevenue From Account where Industry='Biotechnology' WITH SECURITY_ENFORCED];
   return accounts;
   }
   @AuraEnabled(Cacheable= true)
   public static list<Account> getAccountsByType(String type){
      List<Account> accounts= [SELECT Name, Type, Industry, AnnualRevenue
      FROM Account
      WHERE Type = :type WITH SECURITY_ENFORCED];
      return accounts;

   }
   @AuraEnabled(Cacheable= true)
   public static list<Account> getBiotechAccounts1(String industry){
      List<Account> accounts= [SELECT Name, Type, Industry, AnnualRevenue
      FROM Account
      WHERE Industry = :industry WITH SECURITY_ENFORCED];
      return accounts;

   }
}
