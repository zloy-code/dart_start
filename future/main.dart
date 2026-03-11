// Future represents a value that will exist later.


// Network request
// File reading
// Database query

// printing user delayed 2 sec
Future<String> fetchUser() async {
    await Future.delayed(Duration(seconds: 2));
    return "user loaded";
}


Future<String> fetchData() async {
  throw Exception("Server Error"); 
}

// using parallel 

Future<String> getPost() async {
    await Future.delayed(Duration(seconds: 2));
    return "post";
}


void main() async {

   print("Loading...");

   var result  = await Future.wait([
    fetchUser(),
    getPost()
   ]);
   print(result);


   // error handling 

   try{
     String data = await fetchData();
     print(data);

   }catch(err){
    print("Error: $err");
   }



}