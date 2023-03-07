SetDemo.citySet();
SetDemo.randomIntegerSet();
List<integer>listInteger = new list<integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);

//set<integer> sInt = SetDemo.setFromList(listInteger);
list<integer> l1=new list<integer>{1,2,3,4,5,6,7,8};
set<integer>set3=SetDemo.setFromList(L1);
system.debug('set 3 is '+ set3);


set<string> cities= new set<String>();
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Nairobi');
cities.add('Tokyo');
cities.add('Berlin');
cities.add('Nairobi');
cities.add('Tokyo');
Set<String>capsCities=SetDemo.capitalizeset(cities);
System.debug('caps cities= '+capsCities);    


map<string, string> mapCntCurrency = new map<string, string>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Dollar');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
system.debug('map of country vs currency: '+ mapCntCurrency);

// string IndiaCurrency=mapCntCurrency.get('India');
// string TurkeyCurrency= mapCntCurrency.get('Turkey');

System.debug(mapCntCurrency.get('India'));
System.debug(mapCntCurrency.get('Turkey'));

SetDemo.met1();
string france_Cur = mapCntCurrency.get('France');
string country='Turkey';
System.debug('country is '+country);
string turkeyCur= mapCntCurrency.get(country);
System.debug('France currency '+ france_Cur);
System.debug('Turkey currency '+ turkeyCur);

set<string> countrySet =mapCntCurrency.keySet();
System.debug('countries in map : '+ countrySet);

list<String> currencyList = mapCntCurrency.values();
system.debug('Currencies in map '+ currencyList);

//map<integer, list<string>>mapIntCurrency= new 
for(string eachKey: countrySet){
    string printString= 'Country is '+eachKey;
    string eachCurrency=mapCntCurrency.get(eachKey);
    printString+= ', it is currency is '+eachCurrency;
    system.debug(printString);


}
for(string eachKey: countrySet){
    string printString='country is '+eachKey;
    string eachCurrency=mapCntCurrency.get(country);
    system.debug('each country= '+country +'currency is '+eachCurrency);
} 

