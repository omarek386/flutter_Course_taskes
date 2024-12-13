import 'package:flutter/material.dart';

class UserNameTextFormField extends StatelessWidget {
  const UserNameTextFormField({
    super.key,
    required this.userNameKey,
    required this.userNameController,
  });

  final GlobalKey<FormState> userNameKey;
  final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: userNameKey,
      child: TextFormField(
        // key: userNameKey,
        controller: userNameController,
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Enter your name',
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          labelStyle: const TextStyle(color: Colors.white),
          labelText: 'Name',
          helperText: 'Please enter your name',
          helperStyle: const TextStyle(color: Colors.grey),
          // fillColor: Colors.white,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your name';
          } else if (value.length < 3) {
            return 'Name must be at least 3 characters';
          } else if (value.length > 20) {
            return 'Name must be at most 20 characters';
          } else if (value.contains(RegExp(r'[0-9]'))) {
            return 'Name must not contain numbers';
          } else if (value
              .contains(RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]'))) {
            return 'Name must not contain special characters';
          } else {
            return null;
          }
        },
      ),
    );
  }
}
