public  class Cat {
    public string name;
    public string color;
    //parameterless constructor
    //constractor name is same as class name
    //doest return anything
    public Cat(){
        System.debug('constructor called.');
    }
    public Cat(string n, string c){
        integer a;
        a=10;
        this.name=n;
        this.color=c;
        sleeping();
    }
    public void sleeping(){
        system.debug(this.name+' is sleeping');
    }
    public static void allCats() {
        Cat kayaFamilyCat= new Cat('pamukSky' , 'white');
        Cat VitapCat= new Cat ('Simba','brown');
        List<cat> cats =new List<cat>();
        list<car> cars1=new list<car>();
        cars1.add();
        cats.add(kayaFamilyCat);
        cats.add(VitapCat);
        system.debug('all cats are '+cats);
        system.debug('car'+cars1);
       

        
    }
   

    }

