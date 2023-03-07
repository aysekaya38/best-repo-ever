import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import getOpp  from '@salesforce/apex/OpportunityController.getOpp';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import Field from '@salesforce/schema/FieldPermissions.Field';
const COLUMNS = [
    {label: "Opportunity Name", fieldName: "name", type: "text"},
    {label: "Type", fieldName: "Type", type: "text"},
    {label: "Stage Name", fieldName: "stageName", type: "text"},
    {label: "Amount", fieldName: "amount", type: "currency"},
    {label: "Close Date", fieldName: "closeDate", type: "date"},
]


export default class ImperativeApexSearchOpportunity extends LightningElement {
    oppRtId;
    columns = COLUMNS;
    opportunities;
    errors;
    stageOptions = [];
    selectedStage;
    @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT })
    oppHandler({data, error}){
        if(data){
            this.oppRtId = data.defaultRecordTypeId;
        }
        if(error){
            console.error(error);
        }
    }
    @wire(getPicklistValues,{fieldApiName:STAGE_FIELD, recordTypeId:'$oppRtId'})
    stagehandler({data, error}){
        if(data){
            console.log(data);
            this.stageOptions = this.picklistGenerator(data);
        }
        if(error){
            console.error(error);
        }
    }
    picklistGenerator(data){
        return data.values.map(item=>({
                label:item.label,
                value:item.value
        }));
    }
    changeHandler(event){
        this.selectedStage = event.target.value;
        getOpportunities({StageName: this.selectedStage})
            .then(result => {
                this.opportunities = result;
                if(this.opportunities.length ==0 ){
                    this.error = "No searched stage name";
                } else {
                    this.error;
                }
            })
            .catch(error => {
                this.error = error.body.message;
                this.opportunities = undefined;
            })
    }    
}
// oppRtId;
// columns= COLUMNS;
// selectedStage;
// opps;

// @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT})
// oppHandler({data, error}){
//    this.oppRtId= data.defaultRecordTypeId;

// }
// if(error){
//     console.log(error);
// }
// @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT })
//     oppHandler({data, error}){
//         if(data){
//             this.oppRtId = data.defaultRecordTypeId;
//         }
//         if(error){
//             console.error(error);
//         }
//     }
//     @wire(getPicklistValues,{fieldApiName:STAGE_FIELD, recordTypeId:'$oppRtId'})
//     stagehandler({data, error}){
//         if(data){
//             console.log(data);
//             this.stageOptions = this.picklistGenerator(data);
//         }
//         if(error){
//             console.error(error);
//         }
//     }
//     picklistGenerator(data){
//         return data.values.map(item=>({
//                 label:item.label,
//                 value:item.value
//         }));
//     }
//     changeHandler(event){
//         this.selectedStage = event.target.value;
//         getOpportunities({StageName: this.selectedStage})
//             .then(result => {
//                 this.opportunities = result;
//                 if(this.opportunities.length ==0 ){
//                     this.error = "No searched stage name";
//                 } else {
//                     this.error;
//                 }
//             })
//             .catch(error => {
//                 this.error = error.body.message;
//                 this.opportunities = undefined;
//             })
//     }    
// }