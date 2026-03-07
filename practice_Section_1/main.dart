void main(){
   
   print("=========== Dart Practice Section 1 ==========");

   // list array of numbers 

   List<int> numbers = [1,2,3,4,5,6,7,8];

   // iterating by for loop 
   print("====== Printing using for loop ====== \n");
   for(var i = 0; i< numbers.length; i++){
    print(numbers[i]);
   }

  // looping using for in loop
  print("========= Printing using for in loop ======== \n");
  for (var number in numbers){
    print(number);
  }

   // summ of numbers using while loop 
   print("====== Finding summ of numbers using While loop ======\n");
   int sum = 0;
   int index = 0;

   while(index < numbers.length){
    sum+=numbers[index];
    index++;
   }
   print("summ of numbers array : $sum");



  print("========= Functions =========\n");


  int multiplyByTwo(int sum)=> sum * 2;
  int doubledSumm = multiplyByTwo(sum); 
  print("Doubled summ using arrow function: $doubledSumm \n"); 

  // check numbers even or odd using functions 
  print("===== Checking number odd or even =======");
  String checkEvenOdd(int number){
    if (number % 2 == 0){
        return "Number is even";
    }else{
        return "Number is Odd";
    }
  }

  for (int number in numbers){
    print("$number is ${checkEvenOdd(number)}");
  }



}