import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/constants/questions.dart';
import 'package:quiz_app/helpers/navigator.dart';
import 'package:quiz_app/models/answers.dart';
import 'package:quiz_app/presentation/home/home_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  bool isLastQuestion = false;
  String? selectedAnswer;
  String nextButtonText = 'Next Question';
  late String correctAnswer;
  // late Timer timer;
  int time = 10;

  int score = 0;
  @override
  void initState() {
    customTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // startTimer();
    // customTimer();
    isLastQuestion = index == questions.length - 1;
    isLastQuestion
        ? nextButtonText = 'Submit'
        : nextButtonText = 'Next Question';
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Do your best !',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Question ${index + 1} / ${questions.length}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  // margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        // questions[Random().nextInt(questions.length)].question,
                        questions[index].question,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      for (var answer in questions[index].answers)
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: answerButton(answer: answer)),
                    ],
                  ),
                ),
                Positioned(
                  top: -25,
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: time > 6
                          ? Colors.green[300]
                          : time > 3
                              ? Colors.yellow[300]
                              : Colors.red[300],
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.timer_outlined),
                        Text(
                          '$time s',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            nextButton(),
          ],
        ),
      )),
    );
  }

  MaterialButton nextButton() {
    return MaterialButton(
      minWidth: double.infinity,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      onPressed: () {
        time = 10;
        // customTimer();
        setState(() {
          if (selectedAnswer == null) {
            return;
          }

          if (isLastQuestion) {
            // timer.cancel();
            log('Quiz Ended');
            log('Final Score: $score');

            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Quiz Ended'),
                content: Text('Your final score is $score'),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pushReplacement(const HomeScreen());
                    },
                    child: const Text('Close'),
                  ),
                ],
              ),
            );
            return;
          }
          index++;
          if (selectedAnswer == correctAnswer) {
            score++;
          }
          selectedAnswer = null;
          log('Score: $score');
        });
      },
      child: Text(nextButtonText),
    );
  }

  MaterialButton answerButton({required Answers answer}) {
    if (answer.isCorrect) {
      correctAnswer = answer.text;
    }
    return MaterialButton(
      minWidth: double.infinity,
      color: selectedAnswer == answer.text ? Colors.green : Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      onPressed: () {
        setState(() {
          selectedAnswer = answer.text;
        });
      },
      child: Text(answer.text),
    );
  }

  // void startTimer() {
  //   timer = Timer.periodic(const Duration(seconds: 1), (_) {
  //     setState(() {
  //       if (time == 0) {
  //         timer.cancel();
  //         return;
  //       }
  //       time--;
  //     });
  //   });
  // }

  customTimer() async {
    while (time > 0) {
      await Future.delayed(Duration(seconds: 1), () {
        log('$time second passed');
        time--;
        setState(() {});
      });
    }
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Time Up'),
        content: Text('Your final score is $score / ${index + 1}'),
        actions: [
          TextButton(
            onPressed: () {
              context.pushReplacement(const HomeScreen());
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
