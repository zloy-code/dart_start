import 'dart:async';



void main(){


    Stream<int> data = Stream.fromIterable([1,2,3,4,5]);

    data.listen((event){
        print(event);
    });



    // creating stream manually

    Stream<int> counter() async*{
        for (int i=0; i<5; i++){
            await Future.delayed(Duration(seconds: 1));
            yield i;
        }
    }

    // counter().listen((event){
    //     print(event);
    // });


    // creating stream using StreamController

    StreamController controller = StreamController();

    controller.stream.listen((data){
        print(data);
    });

     
    controller.add("Hello");
    controller.add("How are you?"); 

}