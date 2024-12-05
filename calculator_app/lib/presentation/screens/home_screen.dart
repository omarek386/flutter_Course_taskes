import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/constants/images.dart';
import 'package:calculator_app/constants/strings.dart';
import 'package:flutter/material.dart';
import '../widgets/result_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int result = 0;
  int number1 = 0;
  int number2 = 0;
  String? operation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildResultBox(number1, number2, result, operation ?? ''),
            buildControlRow(),
            bottomsBox(),
            resetButton(),
          ],
        ),
      ),
    );
  }

  Widget resetButton() {
    return InkWell(
      onTap: () {
        number1 = 0;
        number2 = 0;
        result = 0;
        operation = null;
        setState(() {});
      },
      child: CircleAvatar(
        backgroundColor: MysColors.primary,
        radius: 80,
        backgroundImage:
            const Image(image: NetworkImage(MyImages.bottom)).image,
        child: const Text(MyStrings.resetButton,
            style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget buildControlRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        addMinusBox(),
      ],
    );
  }

  Widget bottomsBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottom(
              text: MyStrings.addButton,
              onPressed: () {
                result = number1 + number2;
                operation = '+';
                setState(() {});
              },
            ),
            bottom(
              text: MyStrings.minusButton,
              onPressed: () {
                result = number1 - number2;
                operation = '-';
                setState(() {});
              },
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottom(
              text: MyStrings.multiplyButton,
              onPressed: () {
                result = number1 * number2;
                operation = 'x';
                setState(() {});
              },
            ),
            bottom(
              text: MyStrings.divideButton,
              onPressed: () {
                result = number1 ~/ number2;
                operation = '÷';
                setState(() {});
              },
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottom(
              text: MyStrings.exponentiationButton,
              onPressed: () {
                result = number1 ^ number2;
                operation = '^';
                setState(() {});
              },
            ),
            bottom(
              text: MyStrings.modulusButton,
              onPressed: () {
                result = number1 % number2;
                operation = '%';
                setState(() {});
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget bottom({required String text, required Function() onPressed}) {
    return ElevatedButton(
      // clipBehavior: Clip.antiAlias,

      style: ElevatedButton.styleFrom(
        shadowColor: MysColors.primary,
        elevation: 30,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  addMinusBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 170,
          child: Column(
            children: [
              const Text(
                'The first Number',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton.outlined(
                      onPressed: () {
                        number1++;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.add,
                        color: MysColors.primary,
                      )),
                  IconButton.outlined(
                      onPressed: () {
                        number1--;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: MysColors.primary,
                      )),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        SizedBox(
          width: 170,
          child: Column(
            children: [
              const Text(
                'The second Number',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton.outlined(
                      onPressed: () {
                        number2++;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.add,
                        color: MysColors.primary,
                      )),
                  IconButton.outlined(
                      onPressed: () {
                        number2--;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: MysColors.primary,
                      )),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
