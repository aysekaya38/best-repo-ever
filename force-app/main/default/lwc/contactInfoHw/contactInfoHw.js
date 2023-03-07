import { LightningElement } from 'lwc';

export default class ContactInfoHw extends LightningElement {
    contacts = [
        {firstname: "Jeff", lastname: "Bezos", title: "Executive Chairman"},
        {firstname: "Satya", lastname: "Nadella", title: "Chief Executive Officer"},
        {firstname: "Sundar", lastname: "Pichai", title: "Chief Executive Officer"}
];
}