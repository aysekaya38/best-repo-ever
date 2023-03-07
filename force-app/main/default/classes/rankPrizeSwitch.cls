public  class rankPrizeSwitch {
    public string rankPrizeSwitch(integer rank) {
        string prize ='';
        switch on rank {
            when 1 {
               prize = 'Gold';
            }
            when 2 {
                prize ='Silver';

            }
            when 3{
                prize ='Bronze';
            }
            when 4,5,6,7,8,9{
                prize ='Top 10 Participation';
            }
            when else {
                prize='participation certification';
                
            }
        }
            return prize;
        }

    }
   

