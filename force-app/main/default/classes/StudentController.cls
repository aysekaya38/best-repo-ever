
public with sharing class StudentController {
    @AuraEnabled
        //impretive -wire da cacheable kullanilmiyor.
        public static list<Student__c> getStudents(string keyword){
            string input = '%'+keyword+ '%';

           return [SELECT id, Name,Student_Name__c, Email__c, Country__c, Mobile__c, State_Province__c, Street_Address_1__c, Street_Address_2__c, Postal_Code__c, Class__c, City__c FROM Student__c WHERE Postal_Code__c LIKE :input WITH SECURITY_ENFORCED]; 
        } 
}
