import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    name;//undefined
    fullname = "Salesforce LWC"
    age= 25;
    
    detail= {
        name: "dummy",
        place:"India"
    };
    birds=["sparrow", "crow","peacock","hen"];
}