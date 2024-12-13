import 'package:flutter/material.dart';
import 'package:quiz_app/constants/on_boarding_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: OnBoardingInfo.page.length,
      effect: const WormEffect(
        // radius: 6,
        dotWidth: 15,
        dotHeight: 15,
        // offset: 299,
        spacing: 20,
        activeDotColor: Colors.blue,
        dotColor: Colors.grey,
      ),
      onDotClicked: (index) => pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      ),
    );
  }
}
