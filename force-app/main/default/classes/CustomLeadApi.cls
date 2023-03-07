
@Resource(urlMapping = '/LeadCustom/*')
global  class CustomLeadApi {
    @httpGet
    global static lead getLeadId(){
        System.debug('custom lead api call ');
        RestRequest request= RestContext.request;
        System.debug('URI: '+ Request.requestURI);
        Lead ld= [select id, name, company,Status from lead  ];
        return ld;
    }
}
