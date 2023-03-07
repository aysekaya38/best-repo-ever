
//web service
@restResource(urlMapping='/ContactCustom/*')
global  class CustomContactAPI {
    //fetch contact details and account name
    @HttpGet
    global static contact getContactId(){
        System.debug('custom contact api call success');
        //get uri
        RestRequest request= RestContext.request;
        string uri= request.requestURI;
        //fetch contact id from uri
        System.debug('URI:'+ request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex'+ idStartIndex);
        string contactId= uri.substring(idStartIndex);
        System.debug('contactId: '+ contactId);
        //fetch contact
        contact con=[select name,email, phone, account.name from contact where id= :contactId];
        
        contact c= new Contact();
        return c;
    }
    @HttpPost
    global static Id createContact(
        string fName, string lName, string emailId, string phoneNumber, string accountId
    ){
        Contact c = new contact();
        c.FirstName = fName;
        c.LastName = lName;
        c.Email = emailId;
        c.Phone = phoneNumber;
        c.AccountId = accountId;
        insert c;
        return c.id;
    }
    @httpDelete
    global static string deleteContact(){
        System.debug('custom contact api call success');
        //get uri
        RestRequest request= RestContext.request;
        string uri= request.requestURI;
        System.debug('URI:'+ request.requestURI);
        //FETCH CONTACT ID FROM URI
        INTEGER idStartIndex= uri.lastIndexOf('/')+1;
        System.debug('idStartIndex '+idStartIndex);
        string contactId= uri.substring(idStartIndex);
        System.debug('contactId '+contactId);

        Contact c= new contact(id= contactId);
        delete c;
        return 'contact deleted with id: '+ contactId;
    }
    @HttpPatch
  global static string updateContact(string emailId, string phoneNumber) {
    //get the request send from external receipent
    RestRequest request= RestContext.request;

    //get the uri of the request
    string uri= request.requestURI;
    System.debug('uri: '+uri);
    //get the starting index of the id which stary after'/'
    INTEGER idStartIndex= uri.lastIndexOf('/')+1;
    System.debug('idStartIndex '+idStartIndex);
    string contactId= uri.substring(idStartIndex);
    System.debug('contactId '+contactId);
    contact c = new Contact();
    c.Id= contactId;
    c.Email= emailId;
    c.Phone=phoneNumber;
    update c;

    return 'contact update with id'+ contactId + 'updated success!';

    
  }  
//   @httpPut
//   global static String upsertContact(Contact con){//(list<contact> cons)
//     String returnString;
//     //list<string> returnListString= new list<string>();

//     if(con.Id == null){
//         returnString = 'Contact created with id: ';
//     } else {
//         returnString = 'Contact update with id: ';
//     }

//     upsert con;
//     return returnString + con.id;
// }
//eger multiple records
@httpPut
  global static list<id>upsertContact(list<contact> cons){
   

    upsert cons;
  list<id> ids= new list<id>();
  for(contact con: cons){
    ids.add(con.id);
  }
  return ids;
}

}
