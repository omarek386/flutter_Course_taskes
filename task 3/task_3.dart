//
// Task 2 about loops and Functions
// 1. Take a list, say for example this one: a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89] and
// write a program that prints out all the elements of the list that are less than 5.
// 2. Write a dart program to print 1 to 100 but not 41.
// 3. Write a program in Dart to print even numbers between intervals using functions.
// [start, end].
// 4. find the area of a circle using function.
// 5. Create a simple to-do application that allows users to add, remove, and view their
// tasks.  Explain:  https://drive.google.com/file/d/1qylxmso-Tsn1JB6l1Sal1--
// 27rHyNQ_j/view
// 6. Develop a Dart function that checks if a given string is a palindrome (reads the
// same forwards and backwards) using a for loop.
//                                      Ex) (oppo, madam, wow) are palindrome words.
// 7. Write a Dart program to print the following pattern using nested loops:
// *
// **
// ***
// ****
// E a s y   L e a r n
// F l u t t e r   T e a m
import 'dart:io';

void main() {
  Task3 task3 = Task3();
  task3.printProgramList();
  print("Enter your choice:");
  int? choice = int.parse(stdin.readLineSync() ?? '');
  switch (choice) {
    case 1:
      task3.printElementsLessThan5([1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]);
      break;
    case 2:
      task3.printNumbers();
      break;
    case 3:
      task3.printEvenNumbers(1, 10);
      break;
    case 4:
      task3.printAreaOfCircle(5);
      break;
    case 5:
      task3.todoApp();
      break;
    case 6:
      print(task3.isPalindrome("madam"));
      break;
    case 7:
      task3.printPattern();
      break;
    default:
      print("Invalid choice");
  }
}

class Task3 {
  // 1. Take a list, say for example this one: a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89] and
  // write a program that prints out all the elements of the list that are less than 5.
  void printElementsLessThan5(List<int> a) {
    for (int i = 0; i < a.length; i++) {
      if (a[i] < 5) {
        print(a[i]);
      }
    }
  }

  // 2. Write a dart program to print 1 to 100 but not 41.
  void printNumbers() {
    for (int i = 1; i <= 100; i++) {
      if (i == 41) {
        continue;
      }
      print(i);
    }
  }

  // 3. Write a program in Dart to print even numbers between intervals using functions.
  // [start, end].
  void printEvenNumbers(int start, int end) {
    for (int i = start; i <= end; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  }

  // 4. find the area of a circle using function.
  void printAreaOfCircle(int radius) {
    double area = 3.14 * radius * radius;
    print(area);
  }

  // 5. Create a simple to-do application that allows users to add, remove, and view their
  void todoApp() {
    List<String> tasks = [];
    while (true) {
      print("1. Add task");
      print("2. Remove task");
      print("3. View tasks");
      print("4. Exit");
      print("Enter your choice:");
      int? choice = int.parse(stdin.readLineSync() ?? '');
      switch (choice) {
        case 1:
          print("Enter task:");
          String task = stdin.readLineSync() ?? '';
          tasks.add(task);
          break;
        case 2:
          print("Enter task to remove:");
          String task = stdin.readLineSync() ?? '';
          tasks.remove(task);
          break;
        case 3:
          print("Tasks:");
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
          break;
        case 4:
          return;
        default:
          print("Invalid choice");
      }
    }
  }

  // 6. Develop a Dart function that checks if a given string is a palindrome (reads the
  // same forwards and backwards) using a for loop.
  bool isPalindrome(String str) {
    for (int i = 0; i < str.length ~/ 2; i++) {
      if (str[i] != str[str.length - i - 1]) {
        return false;
      }
    }
    return true;
  }

  // 7. Write a Dart program to print the following pattern using nested loops:
  // *
  // **
  // ***
  // ****
  // E a s y   L e a r n
  // F l u t t e r   T e a m
  void printPattern() {
    for (int i = 1; i <= 4; i++) {
      print("*" * i);
    }
    print("E a s y   L e a r n");
    print("F l u t t e r   T e a m");
  }

  void printProgramList() {
    print("1. Print elements less than 5");
    print("2. Print numbers 1 to 100 but not 41");
    print("3. Print even numbers between intervals");
    print("4. Find the area of a circle");
    print("5. Create a simple to-do application");
    print("6. Check if a given string is a palindrome");
    print("7. Print the following pattern");
  }
}
