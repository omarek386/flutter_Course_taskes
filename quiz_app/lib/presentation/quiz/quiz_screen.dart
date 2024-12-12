import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import '../../constants/questions.dart';
import '../../models/answers.dart';
import 'widgets/question_counter.dart';
import 'widgets/timer_box.dart';
import 'widgets/title_text.dart';

import 'widgets/end_message.dart';
import 'widgets/time_out_alert.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.userName});
  final String userName;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  bool isLastQuestion = false;
  String? selectedAnswer;
  String nextButtonText = 'Next Question';
  late String correctAnswer;
  bool activeTimer = true;
  int time = 10;

  int score = 0;
  @override
  void initState() {
    customTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    lastQuestionLogic();
    return Scaffold(
      backgroundColor: Colors.black,
      body: PopScope(
        canPop: false,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleText(
                userName: widget.userName,
              ),
              const SizedBox(height: 20),
              QuestionCounter(index: index),
              const SizedBox(height: 20),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  questionsAndAnswersBox(),
                  TimerBox(time: time, activeTimer: activeTimer),
                ],
              ),
              const SizedBox(height: 20),
              nextButton(),
            ],
          ),
        )),
      ),
    );
  }

  Container questionsAndAnswersBox() {
    return Container(
      // margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          questionText(),
          const SizedBox(height: 20),
          for (var answer in questions[index].answers)
            Padding(
                padding: const EdgeInsets.all(10),
                child: answerButton(answer: answer)),
        ],
      ),
    );
  }

  Text questionText() {
    return Text(
      questions[index].question,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
    );
  }

  void lastQuestionLogic() {
    isLastQuestion = index == questions.length - 1;
    isLastQuestion
        ? nextButtonText = 'Submit'
        : nextButtonText = 'Next Question';
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
        setState(() {
          if (selectedAnswer == null) {
            return;
          }

          if (isLastQuestion) {
            // log('Quiz Ended');
            // log('Final Score: $score');
            activeTimer = false;
            endMessage(context: context, score: score);
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

  customTimer() async {
    while (time > 0) {
      await Future.delayed(const Duration(seconds: 1), () {
        log('$time second passed');
        time--;
        setState(() {});
      });
    }
    // ignore: use_build_context_synchronously
    activeTimer
        // ignore: use_build_context_synchronously
        ? timeOutAlert(context: context, score: score, index: index)
        : null;
  }
}
