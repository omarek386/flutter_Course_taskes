import 'package:flutter/material.dart';

import '../../constants/colors.dart';

Widget buildResultBox(int number1, int number2, int result, String operation) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    height: 200,
    width: double.infinity,
    decoration: BoxDecoration(
      // color: ,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      border: Border.all(
          color: MysColors.primary,
          width: 15,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildNumberField('$number1'),
        getOperationIcon(operation),
        buildNumberField('$number2'),
        equalIcon(),
        buildNumberField('$result'),
      ],
    ),
  );
}

getOperationIcon(String operation) {
  switch (operation) {
    case '+':
      return Icon(
        Icons.add,
        color: Colors.white,
        size: 40,
      );
    case '-':
      return Icon(
        Icons.remove,
        color: Colors.white,
        size: 40,
      );
    case 'x':
      return Icon(
        Icons.close,
        color: Colors.white,
        size: 40,
      );
    case '÷':
      return Text(
        '÷',
        style: TextStyle(color: Colors.white, fontSize: 40),
      );

    case '%':
      return Text(
        '%',
        style: TextStyle(color: Colors.white, fontSize: 40),
      );

    case '^':
      return Text(
        '^',
        style: TextStyle(color: Colors.white, fontSize: 40),
      );
    default:
      return SizedBox();
  }
}

Widget equalIcon() {
  return const SizedBox(
    height: 18,
    width: 20,
    child: Column(
      children: [
        Divider(
          color: Colors.white,
          height: 1,
          thickness: 5,
        ),
        // SizedBox(
        //   height: 1,
        // ),
        Divider(
          color: Colors.white,
          // height: 5,
          thickness: 5,
        )
      ],
    ),
  );
}

Widget buildNumberField(String text) {
  return Container(
    width: 70,
    height: 90,
    decoration: const BoxDecoration(
      color: MysColors.primary,
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
      ),
    ),
  );
}
