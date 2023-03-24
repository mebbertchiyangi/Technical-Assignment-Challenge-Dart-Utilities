import 'dart:io';
void main() {
 
  print(sum());
  print(" ");

//QUESTION 2
  print('this programe automatically prints numbers from 1 to 10');
  //this for loop print numbers 1 to 10
  for(int i =1; i<=10; i++){
    print(i);
  }

//QUESTION 3
  //switch statemet value
  print('this program compares if two inputs are the same');
  print('please enter a char or string of your choice');
  String? value1 = stdin.readLineSync();
  print('please enter a second char or string of your choice');
  String? value2 = stdin.readLineSync();
  if(value1 == value2){
    print('you entered the same char or string.');
  }
  else {
    print('the char or string you entered are not the same');
  }
  //QUESTION 4
  //while loop printing 20 to 10
  print('this programe prints numbers from 20 decreasing to 10');
  int k = 20;
  print('while loop print from 20 to 10');
  while(k>=10){
    print(k);
     k--;
  }
//QUESTION 5
// If else statements to check if the number is odd or even
  print('this program checks if a number is Odd or Even');
  print('please enter any number');
   int number = int.parse(stdin.readLineSync()!);
  if(number%2 != 0){
    print("The number you entered is an Odd number.");
  }

  else {
    print("the number you entered is an Even number");
  }

  //QUESTION 6
  print('this program gets multiple digits and outputs the largest');
//largest number on the List

// Create empty list
  final list = <int>[];
  //collect size of numbers
  print('Please enter how many numbers you want on your list');
  int numLength = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < numLength; i++) {
    int? input;

    // This loop asks if input ins not a digit
    do {
      print('please enter number for position . $i:');

      // the exception validates the input number and assigns it to null if the input in not a digit
      input = int.tryParse(stdin.readLineSync() ?? '');
      // loop until input is a digit  
    } while (input == null); 
    // Add the number we got to the list
    list.add(input);
  }

  //list.reduce finds the biggest number in the list 
  print('Largest number: ${list.reduce((a, b) => a > b ? a : b)}');

  //QUESTION 7
  //try-catch block exception hundling 
  print('this programe allows user to print a character from the givern string');
  String message = "Mebbert";
  print('from the name $message : enter a Char position number to print that Letter');
  int charPosition = int.parse(stdin.readLineSync()!);

  try {
    print("The character at the position 5 is ${message[charPosition]}.");
  } catch (e) {
    print(e);
  }
  print('done!');
}
//QUESTION 1
int sum(){
  
   print('this program calculates the sum of two integers'); 
  print('please enter the first number');
   int num1 = int.parse(stdin.readLineSync()!);
    print('please enter the second number');
  int num2 = int.parse(stdin.readLineSync()!);
  int sum =num1+num2;
  print('the sum is ');
  return sum;
}