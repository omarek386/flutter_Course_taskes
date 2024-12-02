import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/constants/images.dart';
import 'package:flutter/material.dart';

import '../widgets/bottoms.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildResultBox(number1, number2, result),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                addMinusBox(),
              ],
            ),
            bottomsBox(),
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: CircleAvatar(
                backgroundColor: MysColors.primary,
                radius: 80,
                backgroundImage:
                    const Image(image: NetworkImage(MyImages.bottom)).image,
                child: const Text('Reset All',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
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
