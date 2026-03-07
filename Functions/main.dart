void greet(){
    print("Hello, welcome to dart coding");
}

// Functions with parameters 

void greetPerson(String name){
    print("hello, my name is $name");
}

// function with return value 

int add(int a, int b){
    return a + b;
}



// arrow functions (short syntax)

int multiply(int a, int b)=> a*b;


// function with optional parameters

void sayHello([String name = "Guest"]){
    print("say hello to $name");
}

// optional last name adding
void introduce({String firstName = "Guest", String lastName = ""}){
    print("hello my name is $firstName, and my surname is $lastName");
}

void main(){
    greet();
    
    // Function call with parameters 
    greetPerson("Abbosbek");
    
    // result of returnign value
    print(add(5,5));

    // arrow function call 
    print(multiply(2,8));

    // optional parameter function call 
    sayHello();
    // output: say hello to Guest
    sayHello("Abbosbek");
    // output: say hello to Abbosbek

    // second optional function call 
    introduce(firstName : "Abbosbek", lastName: "Orifjonov");
}