public with sharing class ContactCalloutFuture {
    @future(callout=true)//CUNKU API CALL LONG RUNNING OPERATION OLDUGU ICIN BU METHODU KULLANIYORUZ
    public static void sendDataGo(List<id> contactIds) {
        //BURDA ILK RECORDLARIMIZI POST EDECEGIZ ORNEKLERI
      
      List<Contact> con= [select name, Email, Gender__c, Status__c from contact where id =:contactIds[0]];
      UserInfo info= new UserInfo();
          info.name= con[0].Name;
          info.gender= con[0].Gender__c;
          info.email= con[0].Email;
          info.status= con[0].Status__c;

          // JSON FORMATINA CEVIRDIK

      string jsonString= Json.serialize(info);
      System.debug(jsonString);
  
      string endpoint='https://gorest.co.in/public/v2/users';
      string token= 'f3abba7499110ac0438df78daf27ff84253595fc3962e31b641864038cf05335';

//REQUEST ETTIK 
      HttpRequest request = new HttpRequest();
      request.setHeader('Content-Type', 'application/json; charset=utf-8');
      request.setHeader('Authorization', 'Bearer f3abba7499110ac0438df78daf27ff84253595fc3962e31b641864038cf05335');
      request.setEndpoint(endpoint);
      request.setMethod('POST');
      request.setBody(jsonString);

      //RESPONSE KODU YAZDIK
  
      Http http = new Http();
     HttpResponse response = http.send(request);

     if (response.getStatusCode()==200) {
        System.debug(response.getStatus() + response.getBody());

        
     }else{
        System.debug(response.getStatus() + response.getBody());
     }
    }
}
