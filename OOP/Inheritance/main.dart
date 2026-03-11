// Inheritance in Dart is an OOP (Object-Oriented Programming) concept where one class inherits properties and methods from another class


// In Dart, we use the keyword extends.

class Animal {
    void eat(){
        print("Animal is eating");
    }
}


// we can call parent class method using super keyword 
class Dog extends Animal {

void eat(){
    super.eat();
    print("Dog is eating...");

    // output: Animal is eating 
    //            Dog is eating 

}

    void sound(){
        print("Dog is barking");
    }
}


// overriding methods 

class Cat extends Animal {
    // in here we are overriding Animal's eat() method  
@override 
void eat(){
    print("cat is eating...");
}

}



// constructor inheritence

class Person {
    String name;

    Person(this.name);
}

class Student extends Person{
    int age; 
    // for name we call parent class's property
    Student(String name, this.age) : super(name);
}




void main(){
    Dog d = Dog();
    Cat c = Cat();
    // creating instance of person and student
    Student s = Student("Alice", 25);

    // printing name and age of student object 
    print(s.name);
    print(s.age);

    // inherited from Animal class 
    d.eat();

    // method from dog class 
    d.sound();


    c.eat();
}