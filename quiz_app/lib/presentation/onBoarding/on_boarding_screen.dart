import 'package:flutter/material.dart';
import 'package:quiz_app/constants/on_boarding_info.dart';
import 'package:quiz_app/constants/router.dart';
import 'package:quiz_app/presentation/onBoarding/widgets/on_boarding_page_widget.dart';
import 'package:quiz_app/presentation/onBoarding/widgets/page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreen();
}

class _OnBoardingScreen extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  bool isLastPage = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (index == 0)
          ? Colors.white
          : (index == 1)
              ? Colors.grey[800]
              : (index == 2)
                  ? Colors.black
                  : Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: onPageChanged,
            children: buildPageView,
          ),
          Positioned(
            bottom: 120,
            child: PageIndicator(pageController: pageController),
          ),
          Positioned(
            bottom: 30,
            // right: 20,
            child: nextButton(context),
          ),
        ],
      ),
    );
  }

  List<Widget> get buildPageView {
    return [
      for (var i = 0; i < OnBoardingInfo.page.length; i++)
        OnBoardingPageWidget(
          isLastPage: isLastPage,
          title: OnBoardingInfo.page[i]['title']!,
          description: OnBoardingInfo.page[i]['description']!,
          lottiePath: OnBoardingInfo.page[i]['imageUrl']!,
        ),
    ];
  }

  void onPageChanged(value) {
    index = value;
    if (value == OnBoardingInfo.page.length - 1) {
      setState(() {
        isLastPage = true;
      });
    } else {
      setState(() {
        isLastPage = false;
      });
    }
  }

  MaterialButton nextButton(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          if (isLastPage) {
            // ignore: use_build_context_synchronously
            Navigator.pushReplacementNamed(context, Routers.homeScreen);
          } else {
            pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.blue,
        minWidth: 300,
        height: 50,
        child: Text(
          isLastPage ? 'Start Quiz' : 'Next',
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ));
  }
}
