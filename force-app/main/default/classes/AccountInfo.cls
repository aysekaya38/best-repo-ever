public class AccountInfo {
    public static void showAccount() {
        List<Account> accWithOppy= [Select Id, name, (select Name, CloseDate FROM Opportunities where CloseDate>TODAY) from Account];

      System.debug('opportunities date in future '+ accWithOppy);
      
      for (Account everyAcc : accWithOppy) {
          System.debug('account name is '+ everyAcc.name + everyAcc.Opportunities);
          List<Opportunity> eachAccOpps= everyAcc.Opportunities;
          for (opportunity opp : eachAccOpps) {
              System.debug('opp name '+ opp.name + ', opp date '+ opp.CloseDate );
              
           }
          System.debug('----------');
          
      }
            
        }

    }
  

