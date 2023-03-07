map<string, Country_Code__c> mapCC = 	Country_Code__c.getAll();
System.debug('map of country code= '+mapCC);
for(string eachCountry: mapCC.keySet()){
    System.debug('Country = '+ eachCountry+ ', code= '+ mapCC.get(eachCountry).Country_Code__c);
}