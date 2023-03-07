public with sharing class DummyPostCallout {
    private static string GET_DUMMYPOST_ENDPOINT = CalloutInfo__mdt.getInstance('GET_DUMMYPOSTS').Endpoint__c;
     private static string HTTP_GET = 'GET';
    private static string HTTP_POST = 'POST';
   public static void postCallout() {
       //1.create request
       HttpRequest request = new HttpRequest();  
       request.setEndpoint(GET_DUMMYPOST_ENDPOINT);//exactly link
        request.setMethod(HTTP_GET ); 
        
        //Request.setMethod(method)

        Http http= new http();

        HttpResponse response = http.send(request);
        System.debug(response);
        if (response.getStatusCode()==200) {
            System.debug(response.getBody());
            DummyPostResponseWrapper dummywrapper = (DummyPostResponseWrapper)JSON.deserialize(response.getBody(), DummyPostResponseWrapper.class);
            system.debug('dummy wrapper = '+dummywrapper);

            list<post__c> listPosts = new list<post__c>();
            list<DummyPostResponseWrapper.Cls_Post> listClsPost =dummywrapper.posts;
            for (DummyPostResponseWrapper.Cls_Post dpost : listClsPost) {
                post__c p= new post__c();
                p.id__c= dpost.id;
                p.title__c= dpost.title;
                p.body__c= dpost.body;
                p.UserId__c=dpost.userId;
                p.Tags__c= dpost.tags.toString();
                listPosts.add(p);
                
            }
            //database.insert(listPosts,false);
            //insert+update
            //if id is found--> update
            //if id not found-->insert
            upsert listPosts id__c;
            //insert listPosts;
        } else {
           System.debug(response.getStatus()) ;
        }
   }
}
