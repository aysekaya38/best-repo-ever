//created new obj of car class
car bm = new car();
bm.carColor = 'black';
system.debug('car color : ' + bm.carColor);
bm.switchOn();
system.debug('car obj 1 = ' + bm);

car lm = new car();
lm.carColor = 'red';
system.debug('car color : ' + lm.carColor);
lm.switchOn();
system.debug('car obj 2 = ' + lm);
//lm.maxSpeedKMperHour = 100;
car vw =new car();
vw.carColor = 'white';
vw.carName='polo';
vw.drive();
vw.driveAtMaxSpeed();
System.debug('car: '+vw);
