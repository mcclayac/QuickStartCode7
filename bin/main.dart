

//code 7.12
import 'dart:collection';  // we are about to import some extra methods from collection library


void main(List<String> arguments) {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print('Dart Quick Start Chapter 7');
  print('7. Data Structures and Collections');
  // https://learning.oreilly.com/library/view/quick-start-guide/9781484255629/A490744_1_En_7_Chapter.html

  // Lists: An Ordered Collection
  code7_1();
  code7_2();
  code7_3();
  code7_4();
  code7_5();
  // Set: An Unordered Collections of Unique Items
  code7_6();
  // Maps: The Key-Value Pair
  code7_7();
  // Using Collections Together
  code7_8();
  code7_9();
  code7_10();
  code7_11();
  //  Queue Is Open-Ended
  code7_12();





}


//----------------------------------------------
//----------------------------------------------

//code 7.12
//import 'dart:collection';  // we are about to import some extra methods from collection library

void code7_12() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.12");
  print("");

  Queue myQueue = new Queue();
  print("Default implementation ${myQueue.runtimeType}");
  myQueue.add("Sanjib");
  myQueue.add(54);
  myQueue.add("Howrah");
  myQueue.add("sanjib12sinha@gmail.com");
  for(var allTheValues in myQueue){
    print(allTheValues);
  }
  print("----------");
  print("We are removing the first element ${myQueue.elementAt(0)}.");
  myQueue.removeFirst();
  for(var allTheValues in myQueue){
    print(allTheValues);
  }
  print("----------");
  print("We are removing the last element ${myQueue.elementAt(2  )}.");
  myQueue.removeLast();
  for(var allTheValues in myQueue){
    print(allTheValues);
  }

}

//----------------------------------------------
//----------------------------------------------

void code7_11() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.11");
  print("");
  var name;
  var age;
  List<Map<String, dynamic>> users = [
    { name: "Peter", age: 18 },
    { name: "Mira", age: 20 },
    { name: "Jason", age: 22 },
    { name: "Morgan", age: 32 },
    { name: "Mary", age: 50 },
    { name: "Will", age: 86 },
    { name: "Bruce", age: 96 },
  ];
  var isEighteenAndOver = users.every((user) => user[age] >= 18);
  print(isEighteenAndOver);
  var hasNamesWithLetterA = users.every((user) => user.toString().startsWith("A"));
  print(hasNamesWithLetterA);
  var overTwentyOne = users.where((user) => user[age] > 21);
  print(overTwentyOne.length);
  print(overTwentyOne);
  var underEighteen = users.singleWhere((user) => user[age] < 18, orElse: () => null);
  print(underEighteen);
}

//----------------------------------------------
//----------------------------------------------

void code7_10() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.10");
  print("");

  var name;
  var age;
  List<Map<String, dynamic>> users = [
    { name: "Peter", age: 18 },
    { name: "Mira", age: 20 },
    { name: "Jason", age: 22 },
    { name: "Morgan", age: 32 },
    { name: "Mary", age: 50 },
    { name: "Will", age: 86 },
    { name: "Bruce", age: 96 },
  ];
  var isEighteenAndOver = users.every((user) => user[age] >= 18);
  print(isEighteenAndOver);
  var hasNamesWithLetterA = users.every((user) => user.toString().startsWith("A"));
  print(hasNamesWithLetterA);
  var overTwentyOne = users.where((user) => user[age] > 21);
  print(overTwentyOne.length);
  print(overTwentyOne);


}
//----------------------------------------------
//----------------------------------------------

//code 7.9

void code7_9() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.9");
  print("");

  var name;
  var age;
  List<Map<String, dynamic>> users = [
    { name: "APeter", age: 18 },
    { name: "AMira", age: 20 },
    { name: "Anthony", age: 50 },
    { name: "AJason", age: 22 },
  ];
  var isEighteenAndOver = users.every((user) => user[age] >= 18);
  print(isEighteenAndOver);
  var hasNamesWithLetterA = users.every((user) => user.toString().startsWith("A"));
  print(hasNamesWithLetterA);
}
//----------------------------------------------
//----------------------------------------------

void code7_8() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.8");
  print("");
  var name;
  var age;
  List<Map<String, dynamic>> users = [
    { name: "Peter", age: 18 },
    { name: "Mira", age: 20 },
//    { name: "Jason", age: 6 },
    { name: "Tony", age: 22 },
  ];
  var is18AndOver = users.every((user) => user[age] >= 18);
  print(is18AndOver);
}
//----------------------------------------------
//----------------------------------------------

//code 7.7
void mapFunction(){
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.7");
  print("");
  //unordered collection of key=>value pair
  Map<String, String> countries = Map();
  countries['India'] = "Asia";
  countries["Germany"] = "Europe";
  countries["France"] = "Europe";
  countries["Brazil"] = "South America";
  //1. method we can obtain key or value
  for(var key in countries.keys){
    print("Country's name: $key");
  }
  print("-----------");
  for(String value in countries.values){
    print("Continent's name: $value");
  }
  //2. method
  countries.forEach((key, value) => print("Country: $key and Continent: $value"));
  //we can update any map very easily
  if(countries.containsKey("Germany")){
    countries.update("Germany", (value) => "European Union");
    print("Updated country Germany.");
    countries.forEach((key, value) => print("Country: $key and Continent: $value"));
  }
  //we can remove any country
  countries.remove("Brazil");
  countries.forEach((key, value) => print("Country: $key and Continent: $value"));
  print("Barzil has been removed successfully.");
  print("-----------");
  //3. method of creating a map
  Map<String, int> telephoneNumbersOfCustomers = {
    "John" : 1234,
    "Mac" : 7534,
    "Molly" : 8934,
    "Plywod" : 1275,
    "Hagudu" : 2534
  };
  telephoneNumbersOfCustomers.forEach((key, value) => print("Customer: $key and Contact Number: $value"));
}

void code7_7() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.7");
  print("");
  mapFunction();
}

//----------------------------------------------
//----------------------------------------------

void codeSeg1() {
  Map<String,String> countries = Map();
    countries["India"] = "Asia";
    countries["Germany"] = "Europe";
    countries["France"] = "Europe";
    countries["Brazil"] = "South America";
    countries["USA"] = "North America";

  Map<String,int> telephoneNumOfCust = {
    "John" : 1234,
    "Mac" : 456,
    "Molly" : 789,
    "Plywod" : 135,
    "Hagudu" : 246
  };
}
//code 7.6
void setFunction(){
  //set is an unordered collections of unique items
  //cannot get elements by INDEX since the items are unordered
  //1. method of creating Set
  Set<String> countries = Set.from(['India', 'England', 'US']);
  Set<int> numbers = Set.from([1, 45, 58]);
  Set<int> moreNumbers = Set();
  moreNumbers.add(178);
  moreNumbers.add(568);
  moreNumbers.add(569);
  //1. method
  for(int element in numbers){
    print(element);
  }
  print("-----------");
  //2. method
  countries.forEach((v) => print('${v}'));
  print("-----------");
  for(int element in moreNumbers){
    if(moreNumbers.lookup(element) == 178){
      print(element);
      break;
    }
  }
  //set
  var fruitCollection = {'Mango', 'Apple', 'Jack fruit'};
  print(fruitCollection.lookup('Something Else'));
  //it gives null
  //lists
  List fruitCollections = ['Mango', 'Apple', 'Jack fruit'];
  var myIntegers = [1, 2, 3, 'non-integer object'];
  print(myIntegers[3]);
  print(fruitCollections[0]);
}


void code7_6() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.6");
  print("");
  setFunction();
}


//----------------------------------------------
//----------------------------------------------


void code7_5() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.5");
  print("");
  var names = ["John", "Robert", "Smith", "Peter"];
  names.forEach((name) => print(name));
  var mappedNames = names.map((name) => "Absconding $name").toList();
  print(mappedNames);
}


//----------------------------------------------
//----------------------------------------------


void code7_4() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.4");
  print("");
  var names = ["John", "Robert", "Smith", "Peter"];
  names.forEach((name) => print(name));
}

//----------------------------------------------
//----------------------------------------------

//code 7.3

void code7_3() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.3");
  print("");
  var number1 = 1;
  var number2 = 1;
  while(number2 < 50){
    print(number2);
    number2 += number1;
    number1 = number2 - number1;
  }
  print("Separator line: =============");
  var fibonacciNumbers = [1, 2, 3, 5, 8, 13, 21, 34];
  print(fibonacciNumbers.take(3).toList());
  print("Separator line: =============");
  print(fibonacciNumbers.skip(5).toList());
  print("Separator line: =============");
  print(fibonacciNumbers.skip(2).contains(5));
  print("Separator line: =============");
  print(fibonacciNumbers.take(3).skip(2).take(1).toList());
  print("Separator line: =============");
  var clonedFibonacciNumbers = List.from(fibonacciNumbers);
  print("Cloned list: $clonedFibonacciNumbers");
}

//----------------------------------------------
//----------------------------------------------




//----------------------------------------------
//----------------------------------------------


//code 7.2
Function growableList(){
  //1. method
  List<String> names = List();
  names.add("Mana");
  names.add("Babu");
  names.add("Gopal");
  names.add("Pota");
  //there are two methods to capture the list
  print("-----------");
  //1. method
  names.forEach((v) => print('${v}'));
  print("-----------");
  //2. method
  for(int i = 0; i < names.length; i++){
    print(names[i]);
  }
}

void code7_2() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.2");
  print("");
  growableList();
}

//----------------------------------------------
//----------------------------------------------

int listFunction(){
  List<int> nameOfTest = List(3);
  nameOfTest[0] = 1;
  nameOfTest[1] = 2;
  nameOfTest[2] = 3;
  //there are three methods to capture the list
  //1. method
  for(int element in nameOfTest){
    print(element);
  }
  print("-----------");
  //2. method
  nameOfTest.forEach((v) => print('${v}'));
  print("-----------");
  //3. method
  for(int i = 0; i < nameOfTest.length; i++){
    print(nameOfTest[i]);
  }
}

void code7_1() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 7.1");
  print("");

  listFunction();
}
