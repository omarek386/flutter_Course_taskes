import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.loginScreen:
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());
      // case Routes.onBoarding:
      //   return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      // case '/register':
      //   return MaterialPageRoute(builder: (_) => RegisterScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
