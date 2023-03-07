import { api, LightningElement } from 'lwc';

export default class DisplayResult extends LightningElement {
    @api result;
    @api error;
    @api columns;
}