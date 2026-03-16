import 'dart:io';
import 'dart:convert';



void main(){

    // tracking input from the user
    stdin.transform(SystemEncoding().decoder)
         .transform(const LineSplitter())
         .listen((line){
            print("You typed: $line");
         });
}