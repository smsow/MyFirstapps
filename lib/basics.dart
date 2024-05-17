// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'dart:io';

var name = 'Bob';

var user = "Mamadou";
var city = "Saint-Louis";

var numbers = [1,2,3,4,5];
var cities = ['Bangalore', 'Kolkata', 'Dakar'];

const age = 19;

class Employee {

    String firstName = "";
    String lastName = "";
    int age = 0;
    double salary = 0;
  
}

class Student {
    String name = "";
    String surName = "";

      Student(String theName, String thesurName){
        name = theName;
        surName = thesurName;
      }

  
}

class Info {
  String firstname = "";
  String lastname = "";
  int age = 0;
  String location = "";
  String username = "";
  String password = "";


      Info(String theFirstname, String theLastname, int theAge, String theLocation, String theUser, String thePass ){
        firstname = theFirstname;
        lastname = theLastname;
        age = theAge;
        location = theLocation;
        username = theUser;
        password = thePass;
      }
      
      
 

  welcome(){
    if(firstname == ""){
       print("Error something is wrong");
    }else {
      print("Welcome $firstname to this application");
    }
     
  }



       

}

 void lupin(){
    print("Enter your first name");
    String? firstnames = stdin.readLineSync();
    
    do {
      print("It's empty, write it again");
      // ignore: unused_local_variable
      String? firstnames = stdin.readLineSync();
    } while (firstnames != "");



    print("Enter your last name ");
    String? lastnames = stdin.readLineSync();
    print("Enter your age");
    // int age = int.parse(stdin.readLineSync());
    String? ages = stdin.readLineSync();
    int agis = int.parse(ages!);
    print("Enter your location");
    String? locations = stdin.readLineSync();
     print("Enter your username");
    String? usernames = stdin.readLineSync();
    print("Enter your password ");
    String? passwords = stdin.readLineSync();
    
    var askuser = Info( firstnames! , lastnames! , agis, locations!, usernames!, passwords!); 
    print('${askuser.firstname}, ${askuser.lastname}, ${askuser.age}, ${askuser.location}, ${askuser.username}, ${askuser.password} \n');

    askuser.welcome();

   }

void main() {
    // print('Hello from Dart');
    //  print("${args[0] }+ " " + ,${args[1]}");
    
    print("Hello $user. Are you from $city?");
    print( '3 + 5 = ${3 + 5}');
    print( '4 * 5 = ${4 * 5}' );

    print("The ${numbers[0]}st city I'll travel to is ${cities[0]}");
    print("The ${numbers[1]}nd city I'll travel to is ${cities[2]}");

    // if (age >= 18) {
    //   print('At $age you can vote');
    // } else {
    //   print('At $age you can not vote');
    // }

    // var emp = new Employee();

    // emp.firstName = "Mocktar";
    // emp.lastName = "Diop";
    // print(emp.firstName);
    // print(emp.lastName);

    //var stu = Student("Sheikh" , "Sow");

    // print("Enter the name");
    // String? names = stdin.readLineSync();
    // print("Enter your surname ");
    // String? surNames = stdin.readLineSync();

    // var stu = Student(names!, surNames!);

    // print(stu.name);

    // int add(int num1, [int num2 = 5]) {
    //   return num1 + num2;
    // }

    // print(add(20,10));


    // print(add(20));
  
  
    lupin();
    
}

  
