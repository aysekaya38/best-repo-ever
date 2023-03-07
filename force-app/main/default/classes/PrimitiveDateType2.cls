public class PrimitiveDateType2 {
    public void printNewDate(){
        system.debug(' create new date Instance ');
        //create date
        date newDate = Date.newInstance(1995, 02, 05);
        system.debug(' new Date ' +newDate);
        date newDate2 =Date.newInstance(2003, 02, 03);
        system.debug('new Date 2 '+ newDate2);
        Date todayDate = date.today();
        System.debug( ' today date is '+todayDate);

    }
    public void printNewTime(){
        Time time1 = time.newInstance(08, 30, 02, 30);
        System.debug( 'time ' +time1);
        Time time2 = time.newInstance(18, 20, 05, 30);
        System.debug( 'time2 is ' +time2);
    }
    public void printNewDateTime(){
        date newDate=date.newInstance(2020, 10, 10);
        time newTime=time.newInstance(9,8,0,0);
                //1. create new datetime from DATE and Time
        Datetime dt1= datetime.newInstance(newDate, newTime);
        system.debug( ' date time is ' + dt1);
        Datetime dt2= Datetime.newInstance(2025,1,9);
        system.debug( ' dt 2 is '+ dt2);
        Datetime dt3 =Datetime.newInstance(2022, 02, 20, 15, 15, 15);
        system.debug(' dt3 is '+ dt3);

        //5.current timezone 
        datetime currentDT=Datetime.now();
        System.debug('current Dt '+ currentDT);
        date today= date.today();
        datetime dt4= Datetime.newInstance(today, newTime);
        System.debug(' date and time is '+ dt4);
    //6.GTM time
        system.debug('current DT: '+ CurrentDT);
        Datetime dt5 = DateTime.newInstance(1992, 1, 28, 18, 0, 0);
        //6.longTime
        Datetime dt6=Datetime.newInstance(0);
        System.debug('dt 6 '+ dt6);

        Datetime dt61 = Datetime.newInstance(5000L);
        System.debug('dt6_1= '+dt61);

        long longTime = 1231828183000L;
        datetime dt7= Datetime.newInstance(longTime);
        System.debug('Long time is '+longTime);       



    }
    

}
