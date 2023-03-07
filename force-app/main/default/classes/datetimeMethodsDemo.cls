public class datetimeMethodsDemo {
    public void calcAgeInMonths() {
        
        date myBirthday= date.newInstance(1940, 20, 20);
        date today = date.today();
        Integer ageInMonths= myBirthday.monthsBetween(today);
        system.debug('calculate age in months '+ ageInMonths);
       

    }
    public void calculateAgeInDays(){
        system.debug('calculate age in days ');
        date myBirthday= date.newInstance(1940, 20, 20);
        date newToday = date.today();
        integer ageInDays=myBirthday.daysBetween(newToday);
        System.debug('My age in days '+ageInDays);
    
      
    }
    public void printSubscriptionEndDate(){
        date subscriptionStartDate =date.today();
        date subscriptionEndDate =subscriptionStartDate.addDays(1000);
        System.debug('subscription end date '+ subscriptionEndDate);
        integer endDateYear =subscriptionEndDate.year();
        integer endDateMonth= subscriptionEndDate.month();

        System.debug('subs end date year is= '+ endDateYear);
        System.debug('subs end month '+ endDateMonth);

    }
    public void printOfferEndDateTime(){
        datetime dtNow= datetime.now();

        datetime dtOfferEnd=dtNow.addHours(51);
        System.debug('Offer will end on: '+ dtOfferEnd);
        date offerEndDate= dtOfferEnd.date();
        system.debug('offer end date '+ offerEndDate);

       

       
    }
}
