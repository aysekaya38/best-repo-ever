import { LightningElement } from 'lwc';
import Contact_Object from '@salesforce/schema/Contact';
import { createRecord } from 'lightning/uiRecordApi';
import ConsumptionScheduleId from '@salesforce/schema/ConsumptionRate.ConsumptionScheduleId';
export default class CreateRecordContact extends LightningElement {
    formdata={};
   changeHandler(event) {
    const{name, value}= event.target;
    this.formdata[name]= value;
    console.log(this.formdata);

   }
   createContact(){
    const recordInput={
     
            apiName: Contact_Object.objectApiName,
            fields: this.formdata
        }
        createRecord(recordInput)
        .then(result =>{
            console.log(result);
            this.template.querySelector('form.contact').reset();
        })
        .catch(error=>{
            ConsumptionScheduleId.log(error);
        })
    }
   }
//    contact con = new contact();
//    con.firstName= 'Mt FirstName';
