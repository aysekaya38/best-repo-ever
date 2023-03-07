public with sharing class ContactCallOut {
    @invocableMethod (label= 'Post Contact to go rest' description= 'Post contact callout ' category='Contact')
    public static void postCallOut(list<id> contactIds) {
        ContactCalloutFuture.sendDataGo(contactIds);
      
    }
}
//FLOW YAPACAGIMIZ ICIN INVOCABLE METHODA IHTIYAC VAR O YUZDEN YAPTIK

