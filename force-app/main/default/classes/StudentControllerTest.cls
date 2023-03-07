@isTest
public with sharing class StudentControllerTest {
    @isTest
   private static void studentTestZip() {
    List<Student__c> studentList= new List<Student__c>();
 for (Integer i = 0; i < 200; i++) {
    Student__c st= new Student__c();
    st.Student_Name__c= 'Test Student';
    st.Email__c='test@gmail.com';
    st.Country__c='United States';
    st.State_Province__c='FL';
    st.Street_Address_1__c='Test street';
    st.Postal_Code__c='1234';
    st.Class__c=6;
    st.Street_Address_2__c='test 2';
    st.City__c='Orlando';
    studentList.add(st);
    
 }
 system.debug(studentList.size());
        insert studentList;

        test.startTest();
        
        StudentController.getStudents('1234');
        test.stopTest();

        list<student__c> check = StudentController.getStudents('1234');
        system.assertEquals(200, check.size());
   }
}