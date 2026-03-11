//  In Dart, besides extends, there are two other important OOP mechanisms:

// with → Mixins

// implements → Interface implementation


// A mixin is used to reuse code in multiple classes.
// Unlike inheritance, a class can use multiple mixins

mixin Fly {
    void fly(){
        print("flying in the sky...");
    }
}

mixin Landing {
    void landing(){

    print("Warning... Jet is Landing... ");
    }
}


// declaring class with two mixin method 
class F35Jet with Fly, Landing {}



// Real example for mixin 

mixin Logger {
    void log(String message){
        print("LOG: $message");
    }
}

class FileManager with Logger {
    void saveFile(){
        log("file saved");
    }
}




// Implements (Interfaces)
// implements means the class must implement all methods from another class.

abstract class Loogger {
    void log(String message);
}


class ConsoleLogger implements Loogger {
    @override 
    void log(String message){
        print("Console log : $message");
    }
}

class FileLogger implements Loogger{
    @override 
    void log(String message){
        print("Writing to file : $message");
    }
}

class AppService {
    Loogger logger;

    AppService(this.logger);

    void proccess(){
        logger.log("Processing started...");
    } 
}

   
void main(){
    
    F35Jet f35 = F35Jet();

    f35.fly();
    f35.landing();

    // using logger 
    FileManager f = FileManager();
    f.saveFile();

    // Implements 
    // if we open Console logger output will be : Console log : Processing started...
    // Loogger logger = ConsoleLogger();
    // in this line changes output into : Writing to file : Processing started...
    Loogger logger = FileLogger();

    AppService app = AppService(logger);
    app.proccess();
}