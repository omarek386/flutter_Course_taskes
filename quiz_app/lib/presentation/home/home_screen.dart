import 'package:flutter/material.dart';
import 'package:quiz_app/helpers/media_quire.dart';
import 'package:quiz_app/presentation/home/widget/user_name_text_form_field.dart';
import '../../helpers/navigator.dart';

import '../quiz/quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<FormState> userNameKey = GlobalKey();
  TextEditingController userNameController = TextEditingController();
  late String userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/quizLogo.png'),
            UserNameTextFormField(
                userNameKey: userNameKey,
                userNameController: userNameController),
            SizedBox(height: context.height * 0.2),
            const Text('Press the button below to start the quiz!',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(height: context.height * 0.1),
            startQuizButton(context),
          ],
        ),
      )),
    );
  }

  MaterialButton startQuizButton(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      onPressed: () {
        if (userNameKey.currentState!.validate()) {
          userName = userNameController.text.replaceAll(' ', '');
          context.pushReplacement(QuizScreen(
            userName: userName,
          ));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please enter your name'),
            ),
          );
        }
        // context.pushReplacement(const QuizScreen());
      },
      child: const Text('Start Quiz'),
    );
  }
}
