import { api, LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account'

export default class ModalRecordForm extends LightningElement {
    @api recordId;
    objectName=ACCOUNT_OBJECT;
    closeHandler(){
        const successInfo = {
            message: "modal has been closed successfully!",
            info: "NA"
        }
    const closeEvent = new CustomEvent('closemodal', {detail: "modal has been closed!"});
    this.dispatchEvent(closeEvent);
}
}