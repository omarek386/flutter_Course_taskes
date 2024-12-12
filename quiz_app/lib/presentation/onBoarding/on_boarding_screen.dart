import 'package:flutter/material.dart';
import 'package:quiz_app/constants/on_boarding_info.dart';
import 'package:quiz_app/constants/router.dart';
import 'package:quiz_app/presentation/onBoarding/widgets/on_boarding_page_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreen();
}

class _OnBoardingScreen extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) {
              if (value == OnBoardingInfo.page.length - 1) {
                setState(() {
                  isLastPage = true;
                });
              } else {
                setState(() {
                  isLastPage = false;
                });
              }
            },
            children: [
              for (var i = 0; i < OnBoardingInfo.page.length; i++)
                OnBoardingPageWidget(
                  title: OnBoardingInfo.page[i]['title']!,
                  description: OnBoardingInfo.page[i]['description']!,
                  lottiePath: OnBoardingInfo.page[i]['imageUrl']!,
                ),
            ],
          ),
          Positioned(
            bottom: 30,
            // right: 20,
            child: MaterialButton(
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
                )),
          ),
        ],
      ),
    );
  }
}
