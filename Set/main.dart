void main(){

    // In Dart, a Set is a collection of unique values.

    // this is the simple declaration of set
    var numbers = {1,2,2,2,4,3,5};
    print(numbers);

      // this is the declaration of set using set constructor
    Set<int> integers = {1,8,6,6,7,7,8,10};
    print(integers);



    Set<String> fruits = {"Banana", "Apple", "Cherry"};
     
    // add method to add element into set 
    fruits.add("Orange");
    print(fruits);

    // addAll method to add multiple elements into set
    fruits.addAll(["Mango", "Grape"]);
    print(fruits);

    // contains method returns true if set has element named "Apple"
    print(fruits.contains("Apple"));
    
}