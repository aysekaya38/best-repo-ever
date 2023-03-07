public with sharing class AnimalsCallouts {

    private static string GET_ANIMALS_ENDPOINT = CalloutInfo__mdt.getInstance('GET_ANIMALS').Endpoint__c;//metdata olusturup dynamic yaptik. git  custo meta dataya bak orda bu bilgileri bulacaksin
    private static string POST_ANIMALS_ENDPOINT = CalloutInfo__mdt.getInstance('POST_ANIMALS').Endpoint__c;
    private static string HTTP_GET = 'GET';//optinal
    private static string HTTP_POST = 'POST';//optional


   public static void fetchAnimals() {
       //1.prepare request
HttpRequest request = new HttpRequest();//ne winstance
request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');//exactly link
request.setMethod('GET');


       //2.prepare http
    Http http= new http();//new instace

       //3.send request,receive response
       HttpResponse response = http.send(request);

       System.debug('status  '+ response.getStatus());
       System.debug('status code '+ response.getStatusCode());

       //4.process the response
       if (response.getStatusCode()==200) { //gecti oluyor.response basarili oluyor
        string animalsJSON = response.getBody();//string her zaman json oldugu icin
        system.debug (animalsJSON);

    //deserializes the json string into collection of primit data types.//if the response  is unknown to us ,json deserialize it to map<string,obj>
    object ob= json.deserializeUntyped(animalsJSON);
    map<string, object> results = (map<string, object>)ob;//
    system.debug('results '+results);
         LIST<OBJECT> animals = (list<object>) results.get('animals');
         System.debug('======object animals list START===');
         for (object animal : animals) {
            System.debug(animal);
            
         }

    } else {
    //NOT SUCCESS
    
    system.debug(' something went wrong people');
    }   
       }
       

       public static HttpResponse fetchAnimals2() {
         //1. prepare request
         HttpRequest request = new HttpRequest();
         request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
         request.setMethod('GET');
 
         //2. prepare http
         Http http = new http();
 
         //3. send request, receive response
         HttpResponse response = http.send(request);
         system.debug('status ' + response.getStatus());
         system.debug('status code ' + response.getStatusCode());
         //4. process the response
         if (response.getStatusCode() == 200) {
             AnimalCalloutResponse animalResponse = 
                 (AnimalCalloutResponse)JSON.deserialize(response.getBody(), AnimalCalloutResponse.class);
             system.debug('====STRING animals list START ======');
             list<string> allAnimals = animalResponse.animals;
             for (string a : allAnimals) {
                 system.debug(a);
             }
           
             system.debug('====STRING animals list END ======');
 
         } else {
            string result= 'failed';
             system.debug('something went wrong people');
         }
 
         return response;
     }
     public static HttpResponse postAnimal() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(POST_ANIMALS_ENDPOINT);
        request.setMethod(HTTP_POST);
        string jsonReq = '{"name":"fluffykins"}';
        request.setBody(jsonReq);
        request.setHeader('Content-Type', 'application/json');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 201) {
            system.debug('response ' + response.getBody());
            AnimalCalloutResponse animalResponse = 
                (AnimalCalloutResponse)JSON.deserialize(response.getBody(), AnimalCalloutResponse.class);
            system.debug('====STRING animals list START ======');
            list<string> allAnimals = animalResponse.animals;
            for (string a : allAnimals) {
                system.debug(a);
            }
            system.debug('====STRING animals list END ======');

        } else {
            string result = 'failed';
            system.debug('something went wrong people');
        }

        return response;
    }

   }

