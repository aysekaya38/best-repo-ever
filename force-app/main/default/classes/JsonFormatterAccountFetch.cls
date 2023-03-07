//Create a json format Class with 2 variables 

public with sharing class JsonFormatterAccountFetch {
   
    public List<account> lstAccounts  {get;set;}   
    public List<Contact> lstContacts   {get;set;} 

//create a method 
public static void retrievedata() {
    //new instance
    JsonformatMethod  Newformat = new JsonformatMethod  (); 
    List<account> listaccount  = [select id, name from account]; 
    List<Contact> lstContact   = [select id, name from Contact]; 
    Newformat.lstAccounts  = listaccount; 
    Newformat.lstContacts  = lstContact; 
    json.serialize(Newformat); 

    

       
   }
}
