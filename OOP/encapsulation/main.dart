// Encapsulation in Dart means hiding internal data and controlling access to it.

// The goal is to protect data and allow access only through methods (getters/setters).



class BankAccount{ 
    // hiding property from direct access 
    // private variable 
    double _balance = 0;

    void deposit(double amount){
        _balance += amount;
    }

    void withdraw (double amount){
        if (amount <= _balance){
            _balance -= amount;
        }else {
            print("Insufficient balance");
        }
    }

    double getBalance(){
        return _balance;
    }
    
}


// getters and setters 

class Person {
    String _name = "";


    String get name {
        return _name;

    }

    set name(String value){
        if(value.isNotEmpty){
            _name = value;
        }
    }
}




// real case for getter and setter (User System)

class User {
    String _password = "";

    void setPassword(String password){
        if(password.length >= 8){
            _password = password;
            print("Password set successfully");
        }else{
            print("Password is too short");
        }
    }

    bool login(String password){
        return password == _password;
    }
}


void main(){
    BankAccount account =   BankAccount();
    account.deposit(500);

    print(account.getBalance());
    // output : 500.0


    account.withdraw(200);
    print(account.getBalance());
    // output : 300.0

 
    Person p = Person();
    // set name 
    p.name = "Ali";
    // get name 
    print(p.name);



    User user = User();
    user.setPassword("12345678");
    print(user.login("12345678"));


}

