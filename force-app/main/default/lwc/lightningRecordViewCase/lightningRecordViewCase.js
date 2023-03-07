import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CASE_OBJECT from '@salesforce/schema/Case';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import STATUS_FIELD from '@salesforce/schema/Case.Status';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';
import ACCOUNTID_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACT_FIELD from '@salesforce/schema/Case.ContactId';



export default class LightningRecordViewCase extends LightningElement {
    objectName= CASE_OBJECT;
    recordId="5008c00001KgHy8AAF";

    fields = {
Subject:SUBJECT_FIELD,
Priority:PRIORITY_FIELD,
Status:STATUS_FIELD,
Description:DESCRIPTION_FIELD,
Origin:ORIGIN_FIELD,
AccountId:ACCOUNTID_FIELD,
ContactId:CONTACT_FIELD
    };
    successHandler() {
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "Case has been saved successfully!",
            variant: "success"
        });
        this.dispatchEvent(successToast);
    }  

}