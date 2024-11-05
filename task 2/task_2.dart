//? ➢ Write a dart program to check if the number is odd or even.

//? ➢ Write a dart program to check whether a character is a vowel or consonant.

//? ➢ Write a dart program to check whether a number is positive, negative, or zero.

//? ➢ Write a dart program to check whether a number is a Prime number or not

//? ➢ Write a dart program to create a simple calculator that performs addition,
//? subtraction, multiplication, and division. using switch.

//? ➢ Write a dart program to create a List = [7,2,6,3,9,4,5] and print the sum of first
//? element and end element. then add one element (18) to this List and print List after
//? addition.

//? ➢ Write a Dart program that demonstrates the use of collections (such as lists, sets,
//? and maps) without using any loops (for, while, or do-while). Your program should :
//? Create a list of integers. Create a set of the same integers. Create a map where the
//? keys are the integers from the list, and the values are the squares of these integers.

import 'dart:io';

void main() {
  Task2 task2 = Task2();
  task2.printTaskMessage();
  int programNumber = int.parse(stdin.readLineSync() ?? "0");
  switch (programNumber) {
    case 1:
      print('Enter a number :');

      int number = int.parse(stdin.readLineSync() ?? '0');
      task2.checkOddOrEven(number: number);
      break;
    case 2:
      print('Enter a character :');
      String character = stdin.readLineSync() ?? '';
      task2.checkVowelOrConsonant(character: character);
      break;
    case 3:
      print('Enter a number :');
      int number = int.parse(stdin.readLineSync() ?? '0');
      task2.checkPositiveNegativeOrZero(number: number);
      break;
    case 4:
      print('Enter a number :');
      int number = int.parse(stdin.readLineSync() ?? '0');
      task2.checkPrimeNumber(number: number);
      break;
    case 5:
      print('Enter a first number :');
      double number1 = double.parse(stdin.readLineSync() ?? '0');
      print('Enter an operation (+, -, *, /) :');
      String operation = stdin.readLineSync() ?? '';
      print('Enter a second number :');
      double number2 = double.parse(stdin.readLineSync() ?? '0');
      task2.simpleCalculator(
          number1: number1, number2: number2, operation: operation);
      break;
    case 6:
      task2.sumOfFirstAndLastElement(list: [7, 2, 6, 3, 9, 4, 5]);
      break;
    case 7:
      task2.useOfCollections();
      break;
    default:
      print('Invalid program number');
  }
}

class Task2 {
  ///////////////////////////////////////////////////////////////////////////////////////////
  ///                                     Task 2                                           ///
  /// ///////////////////////////////////////////////////////////////////////////////////////

  void printTaskMessage() {
    print('''
  Task 2:

  1➢ Write a dart program to check if the number is odd or even.

  2➢ Write a dart program to check whether a character is a vowel or consonant.

  3➢ Write a dart program to check whether a number is positive, negative, or zero.

  4➢ Write a dart program to check whether a number is a Prime number or not

  5➢ Write a dart program to create a simple calculator that performs addition,

  subtraction, multiplication, and division. using switch.

  6➢ Write a dart program to create a List = [7,2,6,3,9,4,5] and print the sum of first
  element and end element. then add one element (18) to this List and print List after
  addition.
  
  7➢ Write a Dart program that demonstrates the use of collections (such as lists, sets,
  and maps) without using any loops (for, while, or do-while). Your program should :
  Create a list of integers. Create a set of the same integers. Create a map where the
  keys are the integers from the list, and the values are the squares of these integers.
  ''');
  }

  ///* ➢ Write a dart program to check if the number is odd or even.
  void checkOddOrEven({required int number}) {
    if (number % 2 == 0) {
      print('The number $number is even');
    } else {
      print('The number $number is odd');
    }
  }

  ///////////////////////////////////////////////////////////////////////////////////////////
  ///* ➢ Write a dart program to check whether a character is a vowel or consonant.
  /// ///////////////////////////////////////////////////////////////////////////////////////
  void checkVowelOrConsonant({required String character}) {
    if (character == 'a' ||
        character == 'e' ||
        character == 'i' ||
        character == 'o' ||
        character == 'u') {
      print('The character $character is a vowel');
    } else {
      print('The character $character is a consonant');
    }
  }

  ///////////////////////////////////////////////////////////////////////////////////////////
  ///* ➢ Write a dart program to check whether a number is positive, negative, or zero.
  /// ///////////////////////////////////////////////////////////////////////////////////////
  void checkPositiveNegativeOrZero({required int number}) {
    if (number > 0) {
      print('The number $number is positive');
    } else if (number < 0) {
      print('The number $number is negative');
    } else {
      print('The number $number is zero');
    }
  }

  ///////////////////////////////////////////////////////////////////////////////////////////
  ///* ➢ Write a dart program to check whether a number is a Prime number or not
  /// ///////////////////////////////////////////////////////////////////////////////////////
  void checkPrimeNumber({required int number}) {
    bool isPrime = true;
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print('The number $number is a Prime number');
    } else {
      print('The number $number is not a Prime number');
    }
  }

  ///////////////////////////////////////////////////////////////////////////////////////////
  ///* ➢ Write a dart program to create a simple calculator that performs addition,
  ///* subtraction, multiplication, and division. using switch.
  /// ///////////////////////////////////////////////////////////////////////////////////////
  void simpleCalculator(
      {required double number1,
      required double number2,
      required String operation}) {
    double? result;
    switch (operation) {
      case '+':
        result = number1 + number2;
        break;
      case '-':
        result = number1 - number2;
        break;
      case '*':
        result = number1 * number2;
        break;
      case '/':
        result = number1 / number2;
        break;
      default:
        result = null;
    }
    if (result != null) {
      print('The result of $number1 $operation $number2 is $result');
    } else {
      print('Invalid operation');
    }
  }

  ///////////////////////////////////////////////////////////////////////////////////////////
  ///* ➢ Write a dart program to create a List = [7,2,6,3,9,4,5] and print the sum of first
  ///* element and end element. then add one element (18) to this List and print List after
  ///* addition.
  /// ///////////////////////////////////////////////////////////////////////////////////////
  void sumOfFirstAndLastElement({required List<int> list}) {
    int sum = list.first + list.last;
    print('The sum of first element and end element is $sum');
    list.add(18);
    print('List after addition: $list');
  }

  ///////////////////////////////////////////////////////////////////////////////////////////
  ///* ➢ Write a Dart program that demonstrates the use of collections (such as lists, sets,
  ///* and maps) without using any loops (for, while, or do-while). Your program should :
  ///* Create a list of integers. Create a set of the same integers. Create a map where the
  ///* keys are the integers from the list, and the values are the squares of these integers.
  /// ///////////////////////////////////////////////////////////////////////////////////////
  void useOfCollections() {
    List<int> list = [7, 2, 6, 3, 9, 4, 5];
    Set<int> setOfList = list.toSet();
    Map<int, int> map = {};
    for (var element in list) {
      map[element] = element * element;
    }
    print('List: $list');
    print('Set: $setOfList');
    print('Map: $map');
  }
}
