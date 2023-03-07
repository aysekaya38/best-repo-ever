import { LightningElement } from 'lwc';

export default class C2pSimpleEvent extends LightningElement {
   showModal= false;//click button make true but defult false 
   clickHandler(){//eger birisi tiklarsa
    this.showModal= true;

   }
   childHandler(){
    this.showModal=false;
   }
}