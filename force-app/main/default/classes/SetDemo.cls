public  class SetDemo {
  public static void citySet(){
      Set<string>cities = new set<string>();
      cities.add('Tokyo');
      cities.add('Lisbon');
      cities.add('Berlin');
      cities.add('Nairobi');
      cities.add('Tokyo');
      cities.add('Berlin');
      cities.add('Nairobi');
      system.debug('set of cities: '+cities);

     
  }
  public static void randomIntegerSet(){
    Set<integer>setInteger = new set<integer>();
    SetInteger.add(10);
    SetInteger.add(15);
    SetInteger.add(15);
    SetInteger.add(21);
    SetInteger.add(15);
    system.debug('set of random integer ='+setInteger);

  }
  public static set<integer> setFromList(list<integer> intList){
    Set<integer>intSet = new set<integer>();
    intSet.addAll(intList);
    return intSet;

  }
  public static set<string> capitalizeset(set<string> setString) {
      set<string>UpperCaseSet= new set<String>();
      for (string eachStr : setString) {
          string tempStr= eachStr.capitalize();
          UpperCaseSet.add(tempStr);
          
      }
      return UpperCaseSet;
  }
  public static void met1(){
   
      integer sum =0;
      integer counter=0;
      for (Integer i = 11; i <= 55; i++) {
          counter++;
         sum+=i;
          system.debug(sum);
          
      }

  }
}
