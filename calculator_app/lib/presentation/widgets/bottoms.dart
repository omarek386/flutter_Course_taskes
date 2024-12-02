import 'package:flutter/material.dart';

import '../../constants/colors.dart';

Widget bottomsBox() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bottom(
            text: '+ Addition',
            onPressed: () {},
          ),
          bottom(
            text: '- Subtraction',
            onPressed: () {},
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bottom(
            text: 'x Multiplication',
            onPressed: () {},
          ),
          bottom(
            text: '/ Division',
            onPressed: () {},
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bottom(
            text: '^ exponentiation',
            onPressed: () {},
          ),
          bottom(
            text: '% Modulus',
            onPressed: () {},
          ),
        ],
      ),
    ],
  );
}

Widget bottom({required String text, required Function() onPressed}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      // visualDensity: VisualDensity.adaptivePlatformDensity,
      shadowColor: MysColors.primary,
      elevation: 30,

      // visualDensity: VisualDensity(horizontal: 0, vertical: 0),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: const TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}
