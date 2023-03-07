@isTest
public  class CalculatorTest2 {
    @isTest
   public static void testMessage() {
       Calculator1Test.welcomeMessage();
       Calculator1Test.printNewMessage('This is from test method');
       
   }
   @isTest
   private static void addTest() {
       integer i= 10;
       integer j= 15;
      integer  calAdd= Calculator1Test.add(i, j);
       System.assertEquals(25, calAdd);//check two values
       
   }
   @isTest
  public static void printNewMessageTest() {
      string msg='Hey';
      date dt=date.newInstance(2000, 05, 05);
      Calculator1Test.printNewMessage2(msg, dt);
      
  }
  @isTest
  public static void addTest2() {
      //integer calcAdd= calculator1Test.add(10,15,20);
      //system.assertEquals(45,callAdd);
      integer a= 5;
      integer b=3;
      integer c= 6;
      Calculator1Test.add(a, b, c);
      
  }
  @isTest
  public static void addTest3() {
      list<integer> intList= new list<integer>{2,3,4};
      Calculator1Test.add(intList);
      
  }
}
