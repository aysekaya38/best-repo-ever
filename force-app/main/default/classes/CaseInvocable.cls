public with sharing class CaseInvocable {

    @invocableMethod(label='Send Email & Save Activity' description ='Sends an email and saves the same as an activity' category = 'Case')

    public static void sendEmail(list<FlowInput> inputs){
        flowInput input = inputs[0];
        list<Messaging.SingleEmailMessage> msgs = new list<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage msg= new Messaging.SingleEmailMessage();
        msg.setTargetObjectId(input.contactId);
        msg.setSubject('Case Created : '+ input.caseNumber);
        msg.setSaveAsActivity(true);
        msg.setPlainTextBody('Hello there, \n A case has been created for you to answer your query' + 'One of our customer representative is going to reach out to you.Stay tuned!'+ '\n Thank you!');
        msgs.add(msg);
        Messaging.sendEmail(msgs);
       // msg.setWhatId(input.contactId);
        Messaging.SendEmailResult[] results= Messaging.sendEmail(msgs);
        for (Messaging.SendEmailResult result : results) {
            if (result.isSuccess()) {
                //created success log
                System.debug('Succesfully sent!');
                
            }else{
                System.debug(result.getErrors());
            }
            
        }

    }
    //https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_classes_email_outbound_single.htm
    public class FlowInput{
        @invocableVariable(label='Case Number' description ='To Get Case Number' required=true)
        public String caseNumber;
        @invocableVariable (label='Contact Id' description ='To Get Contact Id' required=true)
        public Id contactId;
    }
  
    //account name, list<contactname> & list<opp name>
//    public class DataClass{
//     public string accName;
//     public list<string> conNames;
//     public list<string> oppNames;
//    }
}
//invocableMethod için birden fazla giriş gerektiğinde wrapper class kullanmamız gerekir.
// Çünkü bu method tek parametre alabilir.
// Hatırlarsanız bunu wrapper da konuşmuştuk.
// ayrıca wrapper class inner olarak yani kullanılacak class ın içinde de oluşturulabilir ki Invocable da bu gerekli bir durum. @InvocableMethod anotati ve @InvocableVariable anotati beraber çalışacaklar.
//invoke method tek parametre alabilir. Bu parametreyi artırmak inner class ta wrapper la mümkün.
