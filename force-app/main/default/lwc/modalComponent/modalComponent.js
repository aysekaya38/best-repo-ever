import { LightningElement } from 'lwc';

export default class ModalComponent extends LightningElement {
    closeHandler(){
        const closeEvent= new CustomEvent('close');//all small letters
        this.dispatchEvent(closeEvent);
    }
}
//custom event olusturduk bir clik ile bilgilere ulasbiliyoruz