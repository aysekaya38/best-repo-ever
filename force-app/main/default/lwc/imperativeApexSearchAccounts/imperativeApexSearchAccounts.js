import { LightningElement } from 'lwc';
import getBiotechAccounts1 from '@salesforce/apex/AccountCtrl.getBiotechAccounts1';
const COLUMNS=[
    {label: "Account Name", fieldName: "Name", type: "text"},
    {label: "Account Type", fieldName: "Type", type: "text"},
    {label: "Industry", fieldName: "Industry", type: "text"},
    {label: "Annual Revenue", fieldName: "AnnualRevenue", type: "currency"}
]

export default class ImperativeApexSearchAccounts extends LightningElement {
    columns=COLUMNS;
    selectedIndustry;
    accounts;
    error;
    changeHandler(event){
        this.selectedIndustry= event.target.value;
        getBiotechAccounts1({industry: this.selectedIndustry})
        .then(result => {
            this.accounts= result;
            if(this.accounts.length==0){
                this.error="There are no matching accounts for selected type."
            }else{
                this.error= undefined;
            }
        })
        .catch(error=>{
            this.error= error.body.message;
            this.accounts=undefined;
        })
    }
    
get industryOptions(){
    return[
        {label:"Agriculture", value:"Agriculture"},
        {label:"Banking", value: "Banking"},
        {label:"Biotechnology", value: "Biotechnology"},
        {label: "Consulting", value: "Consulting"}
    ];
}

}