
import { LightningElement, wire } from 'lwc';
import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';


export default class GetObjectInfoOpportunity extends LightningElement {
    crudeRtId;
    refinedRtId;
    @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT })
    opportunityInfoHandler({data, error}) {
        if(data) {
            console.log(data);
            this.crudeRtId = data.defaultRecordTypeId;
            const rtids = data.recordTypeInfos;
            this.refinedRtId = Object.keys(rtids).find(rtid => rtids[rtid].name === "Refined Petrolium");
        }
        if(error) {
            console.log(error);
        }
    }
}

