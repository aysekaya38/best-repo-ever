import { getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';


export default class GetRecordCase extends LightningElement {
    recordId = "5008c00001KgHzGAAV";
    caseNumber;
    status;
    priority;
    subject;
    description;
    caseOrigin;
   @wire(getRecord,{recordId: '$recordId', layoutTypes:['Compact'], modes: ['View'] })
    oppHandler({data, error}) {
        if(data) {
            console.log(data);
            this.caseNumber= data.fields.CaseNumber.value;
            this.status= data.fields.Status.value;
            this.priority= data.fields.Priority.displayValue;
            this.subject= data.fields.Subject.Value;
            this.description= data.fields.Description.displayValue;
            this.caseOrigin= data.fields.CaseOrigin.displayValue;
}
if(error) {
    console.error(error);
}
}
}