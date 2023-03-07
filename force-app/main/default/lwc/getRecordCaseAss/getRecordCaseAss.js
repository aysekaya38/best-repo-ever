import { LightningElement, wire } from 'lwc';
 import ACCOUNT_FIELD from '@salesforce/schema/Case.Account.Name';
 import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
 import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
 import REASON_FIELD from '@salesforce/schema/Case.Reason';
 import TYPE_FIELD from "@salesforce/schema/Case.Type";
 import STATUS_FIELD from '@salesforce/schema/Case.Status';
import { getFieldValue , getRecord} from 'lightning/uiRecordApi';
 const FIELDS=[ACCOUNT_FIELD , SUBJECT_FIELD,  PRIORITY_FIELD,REASON_FIELD,TYPE_FIELD,STATUS_FIELD ];

export default class GetRecordCaseAss extends LightningElement {
    recordId='5008c00001HvFHnAAN';
    accountName;
    subject;
    priority;
    reason;
    type;
    status;
     @wire (getRecord, {recordId: '$recordId',fields: FIELDS}) caseHandler({data, error}){
        if(data){
            this.accountName= getFieldValue(data,ACCOUNT_FIELD);
            this.subject= getFieldValue(data,SUBJECT_FIELD);
            this.priority= getFieldValue(data,PRIORITY_FIELD);
            this.reason= getFieldValue(data,REASON_FIELD);
            this.type= getFieldValue(data,TYPE_FIELD);
            this.status= getFieldValue(data,STATUS_FIELD);
        }
        if(error){
            console.error(error);
        }
        }
     }



