void main(){

// creating simple map using simple data structures 
 Map <String, String> user = {

    "name": "Abbosbek",
    "surname": "Orifjonov",
    "isAlive" : "false"
 };



// creating dynamic map using dynamic keyword for dynamic data saving usign map constructor

 Map<String, dynamic> task = {
   
   "task_name": "open folder",
   "task_id": 0002,
   "task_kill_code": "cancel" 

 };



var examResults = {

    "Bob" : 78,
    "John": 95,
    "Vladimir": 80,
    "Alice": 60,
    "Artur": 55
};

// update method of map to update value of our Artur key

examResults.update("Artur", (v)=> v + 5);

// remove method of map to remove key
examResults.remove("Artur");




// Printing map using forEach loop
examResults.forEach((student, score){
     String result;

     if(score >= 60 && score< 70){
        result = "Good";
     }else if (score >=70 && score < 80){
        result = "You can do it even better!!!";
     }else if (score >= 80 && score < 90){
        result = "Now you are showing yourself";
     }else if (score <= 100 && score >= 90){
        result = "E L I T E";
     }else{
        result = "Not enough";
     }
    print("$student  |  $score  |  $result");
    print("=================================");
});




}