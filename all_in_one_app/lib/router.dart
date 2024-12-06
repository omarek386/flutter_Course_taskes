import 'package:all_in_one_app/screens/calc_app/calcuator.dart';
import 'package:all_in_one_app/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

import 'constants/routes.dart';
import 'screens/card_app/business_card_screen.dart';
import 'screens/card_app/flutter_news_page.dart';
import 'screens/home_page.dart';

class MyAppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case Routes.businessCard:
        return MaterialPageRoute(builder: (_) => const BusinessCardScreen());
      case Routes.flutterNews:
        return MaterialPageRoute(builder: (_) => const FlutterNewsPage());
      case Routes.chatApp:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case Routes.calculatorApp:
        return MaterialPageRoute(builder: (_) => const CalculatorHomeScreen());
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
