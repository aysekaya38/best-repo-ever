
import { LightningElement } from 'lwc';

export default class TrackProperty extends LightningElement {
    location={
        city:"Kayseri",
        country:"Turkey",
        postalCode:"41537"
    };
    handleChange(event){
        this.location.city = event.target.value;
    }


}