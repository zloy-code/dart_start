// Before Dart 2.12, variables could contain null accidentally. 

// String name;
// print(name); // crash




// ? means the variable can contain null.
//    String? name;

void main(){

// name = null;
// print(name);

// Without ?, this would cause an error.


// Null Assertion Operator !

//! tells Dart:
// “I am sure this value is NOT null.”

String? name;


// But if the value is null Program crashes ❌

// traditional null check 

// if(name != null){
//     print(name.length);
// }


// Null-Aware Operator ??

print(name ?? "Guest");

}