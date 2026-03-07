void main(){


// if else statement

int number = 13;

if(number > 5){
    print("Number is greater than 5");
}else{
    print("number is not greater than 5");
}


// else if statement 

if(number > 10){
    print("Number is greater than 10");
}else if (number > 5 ){
    print("Nmuber is greater than 5");
}else {
    print("number is less than 5 or equals to 5");
}


// switch statement 

String day = "Monday";

switch (day){
    
    case "Monday":
    print("start of the week");
    break;
    
    case "Tuesday":
    print("Second day of the week");
    break;

    case "Wednesday":
    print("Third day of the week");
    break;

    case "Thursday":
    print("Fourth day of the week");
    break;

    case "Friday":
    print("Happy Friday bro!!!");
    break;

    case "Saturday":
    print("Weekend is coming");
    break;

    case "Sunday":
    print("Welcome to weekend");
    break;

    default :
    print("There is no day like that buddy");
}



int son = -10;

if (son > 0){
    print("son musbat");
}else{
    print("son manfiy");
}



int age = 18;

if (age >= 18){
    print("Allow adult content");
}else{
    print("Do not allow adult content");
}

}