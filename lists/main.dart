void main(){


    // simple declaration of array(lists) in dart
    var arr1 = [1,20,2,3,4,5, 10];

    // for(int i=0; i<arr1.length; i++){
    //     print(arr1[i]);
    // }

    var max = 0;
    for(int i = 0; i<arr1.length; i++){
        for(int j =0; j<arr1.length; j++){
             if(arr1[i]<arr1[j]){
                max = arr1[j];
             };

        };
    };

print("max integer in array: $max");

    // reversed method of array 
    print(arr1.reversed.toList());

    // add method of array 

    arr1.add(6);
    print(arr1);

    // addAll method for adding multiple elements at once

    arr1.addAll([7,8]);
    print(arr1);

    // remove method removes elements by its value

    arr1.remove(3);
    print(arr1);

    // removeAt method removes elemetns by its index
    arr1.removeAt(1);
    print(arr1); 

    // insert method adds element by given index

    arr1.insert(1,2);
    arr1.insert(2,3);
    print(arr1);

    // clear method cleares all elements inside an array

    // arr1.clear();
    // print(arr1);


    // isNotEmpty checks and returns boolean if given list has elements

   print(arr1.isNotEmpty); 



   // we can specify the type of array 

   List<String> names = ["bob", "John", "Alex"];

   for(var name in names){
    print(name);
   }

}