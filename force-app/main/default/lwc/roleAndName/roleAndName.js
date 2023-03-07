import { LightningElement } from 'lwc';

export default class RoleAndName extends LightningElement {
    name;
    role;

handleChange(event){
    this.name= event.target.value;
}
changeHandler(){
    this.role= event.target.value;
}
get roleChange(){
    return [
        {label: "Admin" , value:"Admin"},
        {label: "Teacher" , value:"Teacher"},
        {label: "Staff" , value:"Staff"}


    ];
}
}