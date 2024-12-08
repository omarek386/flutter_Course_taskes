import 'package:flutter/material.dart';
import 'package:quiz_app/helpers/navigator.dart';

import '../quiz/quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          const Text('Welcome to the Quiz App!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          const Spacer(
            flex: 1,
          ),
          const Text('Press the button below to start the quiz!',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          const Spacer(
            flex: 4,
          ),
          MaterialButton(
            minWidth: double.infinity,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            height: 50,
            onPressed: () {
              context.pushReplacement(const QuizScreen());
            },
            child: const Text('Start Quiz'),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      )),
    );
  }
}
