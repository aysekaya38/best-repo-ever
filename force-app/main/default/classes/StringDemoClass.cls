public  class StringDemoClass {
    public void stringMethod1() {
        String sessionDescription ='learning string\'s methods in apex language';
        Integer lengthOfSTR=sessionDescription.length();
        system.debug('length of string is ='+ lengthOfSTR);
        String capitalizedOfSTR = sessionDescription.toUpperCase();
        System.debug('In caps ='+ capitalizedOfSTR);
        String lowerCase=sessionDescription.toLowerCase();
        System.debug('Lower case of this ' + lowerCase);
        //3. contains 'apex'
        Boolean containApex =sessionDescription.contains('apex');
        system.debug(' has apex '+ containApex);
        Boolean ignoreapex = sessionDescription.containsIgnoreCase(' apex ');
        System.debug(' ignore to '+ ignoreapex);
        Boolean containsSalesforce = sessionDescription.contains(' salesforce ');
        System.debug('has salesforce '+ containsSalesforce);
        System.debug('has APEX ' +sessionDescription.contains('APEX'));
        
        //4.
        String apexx= ' apex';
        string ap = 'APEXX';
        Boolean apexcHECK =apexx.equals (ap);


        System.debug('apex check '+ apexcHECK);

    }
    public void hw(){
        String word ='Welcome to the Salesforce world, apex is host in this world.';
        Boolean Host= word.contains('HOST');
        System.debug('The word statement  has\' HOST\'or not==> ' +Host);

    }
    public void hw2(){
        String a= 'My favourite part is apex';
        String b= 'MY FAVOURITE PART IS APEX';
        Boolean c = a.equals(b);
        System.debug(' Lets check it out statment a is equal to b '+ c);

    }
    public void hw3(){
        date today = date.today();
        date dateOfJoin = date.newInstance(2010, 10, 10);
        Integer daysbetween = dateOfJoin.daysBetween(today);
        System.debug('How many days experience to have ' + daysbetween);


    }
}
