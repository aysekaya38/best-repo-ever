import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/account'
import Name_FIELD from '@salesforce/schema/Account.Name';
import Type_FIELD from '@salesforce/schema/AcceptedEventRelation.Type';
import Industry_FIELD from '@salesforce/schema/Account.Industry';
import AnnualRevenue_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import Phone_FIELD from '@salesforce/schema/Account.Phone';
import Rating_FILED from '@salesforce/schema/Account.Rating';

export default class LightningRecordViewFormAccount extends LightningElement {
    recordId="0018c00002EwfvBAAR";
    objectName=ACCOUNT_OBJECT;
    fields={
        name: Name_FIELD,
        type: Type_FIELD,
        industry: Industry_FIELD,
        revenue:AnnualRevenue_FIELD ,
        phone:Phone_FIELD ,
        rating: Rating_FILED
        

    };
    


}