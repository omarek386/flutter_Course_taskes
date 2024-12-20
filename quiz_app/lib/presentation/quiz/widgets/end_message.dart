import 'package:flutter/material.dart';
import '../../../helpers/navigator.dart';

import '../../home/home_screen.dart';

Future<dynamic> endMessage(
    {required BuildContext context, required int score}) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => PopScope(
      canPop: false,
      child: AlertDialog(
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
    ),
  );
}
