import { api, LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import OPP_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import ACCOUNT_FIELD from '@salesforce/schema/Opportunity.AccountId';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';

export default class LightningRecordEditFormOpportunity extends LightningElement {

@api recordId;//parameter gibi
    //recordId = "0068c00000rSRlKAAW";
    objectName = OPP_OBJECT;

    fields = {
        name: NAME_FIELD ,
        stageName: STAGE_FIELD,
        type: TYPE_FIELD ,
        accountId: ACCOUNT_FIELD,
        amount: AMOUNT_FIELD,
        closeDate:CLOSEDATE_FIELD
       
    };

    successHandler() {
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "Opp has been saved successfully!",
            variant: "success"
        });
        this.dispatchEvent(successToast);
    }
}