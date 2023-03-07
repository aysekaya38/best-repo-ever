//parent
import { LightningElement } from 'lwc';

export default class C2pSimpleEvent2 extends LightningElement {
    input;
    accountId;
    showDetails;
    changeHandler(event){

        this.input=event.target.value;
    }
    clickHandler(){
        this.accountId= this.input;
        this.showDetails=true;
    }
    closeHandler(){
        this.showDetails=false;

    }
}