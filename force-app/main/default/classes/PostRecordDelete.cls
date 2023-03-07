public with sharing class PostRecordDelete {
    public static void deletePost(){
        List<Post__c> post = [select id FROM Post__c];

            delete post;

   }
}
