public  class Car {
    //1.access modifier
            //2.return type
            //3.methodName followed by()
            public string carColor='';
            public string carName= '';
            private integer maxSpeedKMperHour=150;
            

        public void switchOn(){
             //this is method body
        //update code
            
            System.debug('starting the car');
        
        }
        public void drive(){
            System.debug('driving '+ carName);
        }
        public void driveAtMaxSpeed(){
            string drivingDescription= 'driving '+carName +' at '+ maxSpeedKMperHour+ 'km/h';
            System.debug(drivingDescription);
        }

    }
    

