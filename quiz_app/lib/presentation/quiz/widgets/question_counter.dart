import 'package:flutter/material.dart';
import '../../../constants/questions.dart';

class QuestionCounter extends StatelessWidget {
  const QuestionCounter({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Question ${index + 1} / ${questions.length}',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}
