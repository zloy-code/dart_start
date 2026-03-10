//A class is a blueprint for creating objects.

// class 
// class Person {
//     // properties 
//     String name = "";
//     int age = 0;


//     // method
//     void sayHello(){
//         print("Hello my name is $name");
//     }

// }



// declaring class using constructor. constructor is used to initialize an object

class Person {
    
    String name;
    int age;


    Person(this.name, this.age);

    void info(){
        print("$name is $age years old");
    }




}



void main(){
  // object  
  Person p = Person("Alice", 25);

  


  p.info();


}