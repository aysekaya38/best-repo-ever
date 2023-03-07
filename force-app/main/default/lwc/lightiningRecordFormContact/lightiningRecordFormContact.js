
import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import ConFirstName_field from '@salesforce/schema/Contact.FirstName';
import ConLastName_field  from '@salesforce/schema/Contact.LastName';
import conTitle_Field from '@salesforce/schema/Contact.Title';
import conDepartment_Field from '@salesforce/schema/Contact.Department';
import conPhone_field from '@salesforce/schema/Contact.Phone' 


export default class LightiningRecordFormContact extends LightningElement {
  recordId="0038c00002iK7wlAAC"
    objectName=CONTACT_OBJECT;
    field=[ConFirstName_field, ConLastName_field , conTitle_Field, conDepartment_Field, conPhone_field];

    successHandler(){
        const successEvent = new ShowToastEvent({
          title:"Success",
          Message: "Contact record has been saved!!!",
          variant:"success"
        })
        this.dispatchEvent(successEvent);
    }
    errorHandler() {
      const errorEvent = new ShowToastEvent({
          title: "Error",
          message: "An error occurred while saving the contact record!",
          variant: "error"
      });
      this.dispatchEvent(errorEvent);
  }
    


}