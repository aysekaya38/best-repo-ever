public  class Week4Opportunity {
    public static List<Opportunity> AccConOppOpreation(integer n, Id AccountId) {
       
        Account acc=[Select name, id, AnnualRevenue from account where Id =: AccountId ];
        
        List<Opportunity> listOp= new List<Opportunity>();
        
       
        if(n<=0){
            System.debug('Please tell us how many opportunities needs to be creted');
        }else if(n>0) {
            for (Integer i = 0; i < n; i++) {
                Opportunity op= new Opportunity();
                op.Name = acc.Name+ i;
                op.CloseDate= date.today().addYears(3);
                op.StageName='Prospecting';
                op.Amount= acc.AnnualRevenue/n;
                op.AccountId= acc.id;
                listOp.add(op);
            }
            
            insert listOp;
            
        }
        return listOp;
        
      
    }

}
