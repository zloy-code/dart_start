

void main(){
    print("hello dart");


    // number 
    int age = 26;
    print(age);

    //double number (fractional)

    double price = 9.18;
    print(price);

    // string
     
     String name = "Abbosbek";
     print(name);

    // Boolean datatype 

    bool isStudent = true;
    print(isStudent);
  
   
   // var keyword (dart can automatically detect the type)

   var city = "Andijan";
   var year = 2026;
   var temperature = 36.2;

   print(city);
   print(year);
   print(temperature);



   // string interpolation (used to insert variables into text using $)

    print("My name is $name");
    print("i am $age years old");

    // we can insert expressions too 
    int a = 2;
    int b = 4;

    print("sum = ${a+b}");

}