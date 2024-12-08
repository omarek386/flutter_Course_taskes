import 'package:flutter/material.dart';
import '../../../helpers/navigator.dart';

import '../../home/home_screen.dart';

Future<dynamic> timeOutAlert(
    {required BuildContext context, required int score, required int index}) {
  return showDialog(
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
