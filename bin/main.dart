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







}

//----------------------------------------------
//----------------------------------------------


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
