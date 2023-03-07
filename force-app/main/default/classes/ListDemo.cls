public  class ListDemo {
    public static string candidatesList(integer indx){
        List<string> listCandidates=new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        System.debug('Candiates are '+listCandidates);
        string myList='';
        if (indx>=0 && indx<listCandidates.size()){
        myList=listCandidates[indx];
        }else{
            myList='Not such value found';
        }
        return myList;

    


    }
    public static void randomIntegerList(){
        List<Integer> listInteger=new list<Integer>();
       listInteger.add(10);
       listInteger.add(15);
       listInteger.add(15);
       listInteger.add(21);
       listInteger.add(15);
       //get index 3 value

       integer index3value= listInteger.get(3);
       integer index3value2= listInteger[3];
       

       System.debug('List of random  integers'+listInteger);
       System.debug('index3value='+ index3value);
       System.debug('index3value2= '+index3value2);




    }
    public static integer iterateIntegerList(integer num1,integer num2) {
        list<integer>listInteger=new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        integer toplam;
        for (integer everyInteger : listInteger) {
             toplam=num1+num2;
            system.debug(everyInteger);
           
        }
        return toplam;
        
    }
}
