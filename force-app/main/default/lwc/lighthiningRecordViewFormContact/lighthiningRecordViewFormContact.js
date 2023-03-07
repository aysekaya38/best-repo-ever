import { LightningElement } from 'lwc';

import CONTACT_OBJECT from '@salesforce/schema/Contact';
import NAME_FIELD from '@salesforce/schema/Contact.Name';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import Account_FIELD from '@salesforce/schema/Contact.AccountId';
import Phone_FIELD from '@salesforce/schema/Contact.Phone';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import Mobile_FIELD from '@salesforce/schema/Contact.MobilePhone';
import Owner_field from '@salesforce/schema/Contact.OwnerId';

export default class LighthiningRecordViewFormContact extends LightningElement {
    recordId="0038c00002iK7wlAAC"
    objectName=CONTACT_OBJECT;
    fields={
        name: NAME_FIELD,
      title: TITLE_FIELD,
      account:  Account_FIELD,
      phone: Phone_FIELD,
      email :EMAIL_FIELD,
      mobile: Mobile_FIELD,
      owner:Owner_field 

    };

}