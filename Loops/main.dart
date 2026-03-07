void main(){


int i = 0;

while (i<5){
    print(i);
    i++;
}

print("\n");

// for loop 

for (int i=1; i<=5; i++){
    print(i);
}

print("\n");

// do-while loop 

int son = 1;

do{
    print(son);
    son++;

}while(son <= 5);



// for in loop

List<String> fruits = ["Apple", "Banana", "Cherry"];

   for(var fruit in fruits){
    print(fruit);
   }

}