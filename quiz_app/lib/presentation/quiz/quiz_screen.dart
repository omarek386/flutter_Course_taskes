import 'package:flutter/material.dart';
import 'package:quiz_app/constants/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
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
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
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
                  for (var i in questions[index].answers)
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: answerButton(answer: i.answer)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              minWidth: double.infinity,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 50,
              onPressed: () {
                setState(() {
                  index++;
                });
              },
              child: const Text('Next Question'),
            ),
          ],
        ),
      )),
    );
  }

  MaterialButton answerButton({required String answer}) {
    return MaterialButton(
      minWidth: double.infinity,
      color: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      onPressed: () {},
      child: Text(answer),
    );
  }
}
