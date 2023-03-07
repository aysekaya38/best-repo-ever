public  class Calculator {
    public static void welcomeMessage() {
        System.debug ('welcome to apex calc ');

    }
    public static void  printNewMessage(string msg){
        System.debug(msg);
    }
    public static void printNewMessage2(string msg, date dt){
        System.debug(msg);
        system.debug(dt);
    }
    public static void yeniString(string mail){
    system.debug(mail);
    
    }
    public static void hesaplar (integer num){
        system.debug('benim numaram ' +num);
    }
    //1.add two parameter
    public static integer add(integer a , integer b){
        integer sum= a+b;
        return sum;
    }
    //2.add 4 parameters
    public static integer  add (integer a, integer b, integer c){
        
       
        return a+b+c;
    }
    public static Boolean leapYearCheck (date dt){
        Integer year =dt.year();
        Boolean leapYear= date.isLeapYear(year);
        return leapYear;
    }
    public boolean myLeap(date ab){
        integer years =ab.year();
        Boolean ly1=date.isLeapYear(years);
        return ly1;
        
    }
    public static integer add(List<integer> intList){
        integer sum=0;
        

        for (integer eachInt : intList) {
            sum+=eachInt;
            
        }
        return sum;
    }
    
}
