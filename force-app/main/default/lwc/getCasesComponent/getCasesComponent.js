import getCasesByAcc from '@salesforce/apex/GetCaseController.getCasesByAcc';
import { api, LightningElement, wire } from 'lwc';
import ACCOUNT_FIELD from '@salesforce/schema/patient__c.Account__c';
import { getRecord } from 'lightning/uiRecordApi';
 

const FIELDS=[ACCOUNT_FIELD];
export default class GetCasesComponent extends LightningElement {
    @api recordId;
    accId;
    @wire(getRecord,{recordId: '$recordId', fields:FIELDS})
    patientJustAccount({data, error}){
    if(data){
        console.log("account data:", data);
        this.accId= data.fields.Account__c.value;
        console.log("accId:", accId);
    }
    };
    @wire(getCasesByAcc,{accId: '$accId'})
    cases
    
}