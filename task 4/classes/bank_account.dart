// ignore_for_file: public_member_api_docs, sort_constructors_first
// Declare a class to represent a bank account with the following data members:
//            Name, account number, type of account (S for saving and C for current) and
//              balance amount.
//            The class also contains member functions to do the following:
//   a) Constructor to initialize data members
//   b) Set & get for data members.
//   c) To deposit money
//   d) To withdraw money after checking the balance (minimum balance is 1000).
//   e) To display data members.

// •In the main create a List of customers
// •Fill in the data of all customers from the user and display customer’s data.
// •Use deposit and withdraw method and then use get_balance method to
//      display the balance value.

class BankAccount {
  BankAccount(
      {required String name,
      required int accountNumber,
      required String typeOfAccount,
      required double balanceAmount}) {
    _name = name;
    _accountNumber = accountNumber;
    _typeOfAccount = typeOfAccount;
    _balanceAmount = balanceAmount;
  }

  late String _name;
  late int _accountNumber;
  late String _typeOfAccount;
  late double _balanceAmount;

  set name(String name) {
    _name = name;
  }

  set accountNumber(int accountNumber) {
    _accountNumber = accountNumber;
  }

  set typeOfAccount(String typeOfAccount) {
    _typeOfAccount = typeOfAccount;
  }

  set balanceAmount(double balanceAmount) {
    _balanceAmount = balanceAmount;
  }

  String get name => _name;
  int get accountNumber => _accountNumber;
  String get typeOfAccount => _typeOfAccount;
  double get balanceAmount => _balanceAmount;

  void depositMoney(double amount) {
    _balanceAmount += amount;
  }

  void withdrawMoney(double amount) {
    if (_balanceAmount - amount >= 1000) {
      _balanceAmount -= amount;
      print("Withdrawal successful");
    } else {
      print("Insufficient balance");
    }
  }

  void displayData() {
    print("Name: $_name");
    print("Account Number: $_accountNumber");
    print("Type of Account: $_typeOfAccount");
    print("Balance Amount: $_balanceAmount");
  }
}
