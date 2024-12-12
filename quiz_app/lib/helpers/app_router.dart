import 'package:flutter/material.dart';
import 'package:quiz_app/constants/router.dart';
import 'package:quiz_app/presentation/home/home_screen.dart';
import 'package:quiz_app/presentation/onBoarding/on_boarding_screen.dart';
import 'package:quiz_app/presentation/splash/splash_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routers.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routers.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
