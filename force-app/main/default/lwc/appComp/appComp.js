import { LightningElement } from 'lwc';

export default class AppComp extends LightningElement {
    showHandler(event) {
        console.log("At grand parent component.");
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);
    }
}