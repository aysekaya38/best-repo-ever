public class LoopDemo {
    public void print_int_while(){
        integer count =1;
        while (count <=25){
            system.debug(count);
            count++;
        }
    }
        public void print_N_numbers(integer n){
           
            for (Integer i = 0; i < n; i++) {
                System.debug(i);           
            }
        }
            public integer print_N_numbers_2(integer n){
                integer sum=0;
                for (Integer i = 0; i < n; i++) {
                    sum+=i;
                    
                }
                system.debug('summation is '+sum);
                return sum;

    }
 
   
}
