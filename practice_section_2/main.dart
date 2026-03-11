import 'dart:io';

// Student class
class Student {
    String name;
    int age;

    Student(this.name, this.age, );
}

// add student to list
void addStudent(List<Student> students){
    stdout.write("Student ismi: ");
    String? name = stdin.readLineSync();

    stdout.write("Student yoshi: ");
    String? ageStr = stdin.readLineSync();
    
    if(name != null && ageStr != null){
        int? age = int.tryParse(ageStr);
        if(age != null){
            students.add(Student(name, age));
            print("Student muvofaqiyatli qo'shildi");
        }else {
            print("Yosh raqam bo'lishi kerak!");
        }
    }

}

// remove student by index
void removeStudent(List<Student> students){

       if(students.isEmpty){
        print("Studentlar topilmadi!!!");
        return;
    }

    viewStudents(students);

    stdout.write("\nO'chirish uchun student raqamini tanlang: ");
    String? indexStr = stdin.readLineSync();
    if(indexStr != null){
        int? index = int.tryParse(indexStr);
        if(index != null && index > 0 && index <= students.length){
            students.removeAt(index - 1);
            print("Student o'chirildi");
        }else {
            print("Noto'g'ri raqam tanlandi!");
        }
    }

}


// view students 
void viewStudents(List<Student> students){

    if(students.isEmpty){
        print("Studentlar topilmadi!!!");
        return;
    }

    print("\n =========== Studentlar Ro'yxati =======\n");

    for(int i= 0; i<students.length; i++){
        print("${i + 1}. Ismi: ${students[i].name}, Yoshi: ${students[i].age} ");

    }


    
}





void main(){

  List<Student> students = [];

  while(true){

    // menu
    print("\n======= Student management ======= \n");
    print("1. Student qo'shish");
    print("2. Studentlarni ko'rish");
    print("3. Student o'chirish");
    print("4. Student sonini ko'rsatish");
    print("0. Chiqish");

    // user input
    stdout.write("\nTanlang: \n");
    String? choice = stdin.readLineSync();

    switch(choice){
        case '1':
        addStudent(students);
        break;

        case '2':
        viewStudents(students);
        break;

        case '3':
        removeStudent(students);
        break;

        case '4':
        print("Studentlar soni : ${students.length}");
        break;

        case '0':
        print("Dasturdan chiqish...");
        return;

        default :
        print("Noto'g'ri menyu tanlandi");
        

    }

  }




}