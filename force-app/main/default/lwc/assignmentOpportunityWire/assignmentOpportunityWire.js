import { LightningElement, wire } from 'lwc';
import OPPORTUNITY_OBJECT from'@salesforce/schema/Opportunity';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';

// import OPPORTUNITY_FIELD from '@salesforce/schema/Opportunity'
// import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
// import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
// import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';

export default class AssignmentOpportunityWire extends LightningElement {
    oppId;
    oppName;
    stageName=[];
    selectedStage;
    type =[];
    selectedType;

    @wire(getObjectInfo, {objectApiName:OPPORTUNITY_OBJECT})
    oppHandler({data,error}){
        if(data){
            console.log(data);
            this.oppId = data.defaultRecordTypeId;
        }
        if(error){
            console.error(error);
        }
    }

    @wire(getPicklistValues,{fieldApiName:STAGE_FIELD,recordTypeId:'$oppId'})
        stagehandler({data, error}){
            if(data){
                console.log(data);
                this.stageName = this.picklistGen(data);
            }
            if(error){
                console.error(error);
            }
        }
        
    @wire(getPicklistValues, {fieldApiName:TYPE_FIELD,recordTypeId:'$oppId'})
        typeHandler({data,error}){
            if(data){
                console.log(data);
                this.type = this.picklistGen(data);
            }
            if(error){
                console.error(error);
            }
        }
    
        picklistGen(data){
            return data.values.map(item=>({
                    label:item.label,
                    value:item.value
            }));
        }

        changeHandler(event){
           if(event.target.name==="name"){
            this.oppName=event.target.value;
           }
           if(event.target.name==="StageName"){
            this.selectedStage = event.target.value;
           }else{
            this.selectedType = event.target.value;
           }
        }
    
//     oppId;
//     oppName;
//     stageName=[];
//     selectedStage;
//     selectedType;
//     type=[];

// @wire(getObjectInfo,{objectApiName:OPPORTUNITY_FIELD})
// oppHandler(data,error){
//     if(data){
//         console.log(data);
//         this.oppId= data.defaultRecordTypeId;
//     }
//     if(error){
//         console.error(error);
//     }
// }
//     @wire(getPicklistValues,{fieldApiName: STAGE_FIELD, recordTypeId: '$oppId' })
//     stageNameHandler({data, error}){
//         if(data){
//             console.log(data);
//         }
//         if(error){
//             console.error(error);
//         }
//     }
//     @wire(getPicklistValues, {fieldApiName:TYPE_FIELD, recordTypeId:'$oppId'}) typeHandler({data,error}){
//         if(data){
//             console.log(data);
//             this.stageName= this.picklistGen(data);
//         }
//         if(error){
//             console.error(error);
//         }
//     }
//     picklistGen(data){
//         return data.values.map(item=>({
//             label:item.label,
//             value:item.value
//         }));
//     }
//     changeHandler(event){
//         if(event.target.name==="Name"){
//             this.oppName=event.target.value;
//         }
//         if(event.target.name==="StageName"){
//             this.selectedStage= event.target.value;
//         }
//         if(event.target.name==="Type"){
//                 this.selectedType= event.target.value;

//             }   
      
//     }
}