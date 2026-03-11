// Polymorphism means “many forms.”

// In programming, it means:

// The same method name can behave differently depending on the object.

// It is one of the 4 pillars of OOP.




// out payment system can be example for this method 


abstract class Payment {
    void pay(double amount);
}


class CardPayment extends Payment {
    @override 
    void pay(double amount){
        print("Paid $amount using card");
    }
}


class CryptoPayment extends Payment {
    @override 
    void pay(double amount){
        print("Paid $amount using Crypto");
    }
}


void main(){
    List<Payment> payments = [
        CardPayment(),
        CryptoPayment()
    ];


    for (var payment in payments){
        payment.pay(100);
    }

}



