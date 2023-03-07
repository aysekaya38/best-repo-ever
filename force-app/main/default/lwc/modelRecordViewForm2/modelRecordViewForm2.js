//child
import { api, LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
export default class ModelRecordViewForm2 extends LightningElement {
    @api recordId;
    objectName=CONTACT_OBJECT;
   
    closeHandler(){
      const  successInfo={
            message:"Modal has been closed succesfully!", 
            info:"NA"
        }
        const closeEvent= new CustomEvent('closemodal', {detail:"modal has been closed"});
        this.dispatchEvent(closeEvent);
    }
}