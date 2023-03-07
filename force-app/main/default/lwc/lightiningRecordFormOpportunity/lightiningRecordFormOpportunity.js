import { LightiningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';

export default class LightiningRecordFormOpportunity extends LightningElement {
    recordId= '0068c00000ow5umAAA';
    objectName=OPPORTUNITY_OBJECT;
    successHandler() {
        const successEvent = new ShowToastEvent({
            title: "Success",
            message: "The opportunity record has been saved successfully!",
            variant: "success"
        });
        this.dispatchEvent(successEvent);
    } 
​
    errorHandler() {
        const errorEvent = new ShowToastEvent({
            title: "Error",
            message: "An error occurred while saving the opportunity record!",
            variant: "error"
        });
        this.dispatchEvent(errorEvent);
    
    }
}


