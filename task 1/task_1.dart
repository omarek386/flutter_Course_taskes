//* Task 1

//* ➢write a program to print "Hello Dart" using variable.
//* ➢ write a program to print two values of two integer variables in single line.
//* ➢ Write a program to print a square of a number using user input.
//* ➢ The temperature converter it's hot. Let's make a converter based on the steps here. Store a Celsius temperature into a variable. Convert it to Fahrenheit and output "NN°C is NN°F" . Now store a Fahrenheit temperature into a variable .Convert it to Celsius and output "NN°F is NN°C."
//* ➢ Declare three constants called rating1, rating2 and rating3 of type double and assign each a value. Calculate the average of the three and store the result in a constant named average_Rating.
//* ➢ Age Calculator: Create a program that will calculate how old you will be in a future year. Store your birth year in a variable. Store a future year in a variable. Calculate the possible age for that year based on the stored values.For example, if you were born in 1996, then in 2026 you'll be 37. Output them to the screen like so: "I will be NN in YYYY", substituting the values.
//* ➢ Write a dart program to convert String to int.
//* ➢ Write a dart program to convert double to int.

import 'dart:io';
import 'dart:math';

void main() {
  Task1 task1 = Task1();
  task1.printMenu();
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      task1.helloDart();
      break;
    case 2:
      task1.twoValues();
      break;
    case 3:
      print("Enter a number: ");
      int num = int.parse(stdin.readLineSync()!);
      task1.squareOfNumber(num: num);
      break;
    case 4:
      task1.temperatureConverter();
      break;
    case 5:
      task1.averageRating();
      break;
    case 6:
      print("Enter your birth year: ");
      int birthYear = int.parse(stdin.readLineSync()!);
      print("Enter a future year: ");
      int futureYear = int.parse(stdin.readLineSync()!);
      task1.ageCalculator(birthYear: birthYear, futureYear: futureYear);
      break;
    case 7:
      task1.convertStringToInt();
      break;
    case 8:
      task1.convertDoubleToInt();
      break;
    default:
      print("Invalid choice");
  }
}

class Task1 {
  // Hello Dart1
  void helloDart() {
    String helloDart = "Hello Dart";
    print(helloDart);
  }

  // Two values of two integer variables in single line
  void twoValues() {
    int a = 10;
    int b = 20;
    print("$a $b");
  }

  // Square of a number using user input
  void squareOfNumber({required int num}) {
    print(pow(num, 2));
  }

  // Temperature converter
  void temperatureConverter() {
    double celsius = 37.5;
    double fahrenheit = (celsius * 9 / 5) + 32;
    print("$celsius°C is $fahrenheit°F");

    double fahrenheit2 = 99.5;
    double celsius2 = (fahrenheit2 - 32) * 5 / 9;
    print("$fahrenheit2°F is $celsius2°C");
  }

  // Average of three ratings
  void averageRating() {
    const double rating1 = 4.5;
    const double rating2 = 3.5;
    const double rating3 = 5.0;
    const double averageRating = (rating1 + rating2 + rating3) / 3;
    print(averageRating);
  }

  // Age Calculator
  void ageCalculator({required int birthYear, required int futureYear}) {
    int age = futureYear - birthYear;
    print("I will be $age in $futureYear");
  }

  // Convert String to int
  void convertStringToInt() {
    String num1 = '5876';
    int num2 = int.parse(num1);
    print(num2);
  }

  // Convert double to int
  void convertDoubleToInt() {
    num d = 45.5;
    int num2 = d.toInt();
    print(num2);
  }

  void printMenu() {
    print("1. Hello Dart");
    print("2. Two values of two integer variables in single line");
    print("3. Square of a number using user input");
    print("4. Temperature converter");
    print("5. Average of three ratings");
    print("6. Age Calculator");
    print("7. Convert String to int");
    print("8. Convert double to int");
  }
}
