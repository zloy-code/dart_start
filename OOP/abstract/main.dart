//Abstraction in Dart means hiding implementation details and showing only the necessary functionality.


// The user of a class does not need to know how something works internally, only what it does.



// real example of abstract (Payment system)


abstract class Payment {
    void pay(double amount);
}


class CreditCardPayment extends Payment{
    @override
    void pay(double amount){
        print("Paid $amount using credit card");
    }
}


class PayPaypal extends Payment {
    @override 
    void pay(double amount){
        print("Paid $amount using Paypal");
    }
}



void main(){

    // paying using credit card 
    // Payment payment = CreditCardPayment();
 
    // payment using Paypal
    Payment payment = PayPaypal();
    payment.pay(100);

/* 
     Visual Idea


    Payment (abstract)
            │
     ┌──────┴──────┐
CreditCard     PayPal

The system only knows pay(), not the internal logic.


*/

}