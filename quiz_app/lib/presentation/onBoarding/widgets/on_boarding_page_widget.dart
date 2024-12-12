import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.title,
    required this.lottiePath,
    required this.description,
    required this.isLastPage,
  });
  final String title;
  final String lottiePath;
  final String description;
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          Text(
            title,
            style: TextStyle(
                color: isLastPage ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Lottie.asset(
            lottiePath,
            animate: true,
            backgroundLoading: false,
          ),
          const Spacer(flex: 1),
          Text(description,
              style: const TextStyle(color: Colors.grey, fontSize: 20)),
          const Spacer(flex: 4),
        ],
      ),
    );
  }
}
