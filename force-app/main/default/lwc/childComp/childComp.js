import { LightningElement } from 'lwc';

export default class ChildComp extends LightningElement {
    clickHandler(){//simlier event
        const clickEvent= new CustomEvent ('show', {bubbles: false, composed:false});
        this.dispatchEvent(clickEvent);
    }
}