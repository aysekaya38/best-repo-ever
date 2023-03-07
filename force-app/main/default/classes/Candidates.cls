public with sharing class Candidates {
   public string Name;
   public string Gender;
   public static string CompanyName;

   public  void printCandidate(){
       system.debug('Candiadate name is '+Name + '('+Gender + ')');
       system.debug('Company name is '+ CompanyName);
   }
   public static void printCandidateInfoSt() {
       System.debug('Company name is '+ CompanyName);
       
   }
       
   }


