import 'package:business_card/constants/routes.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/business_card_screen.dart';
import 'presentation/screens/flutter_news_page.dart';
import 'presentation/screens/home_page.dart';

class MyAppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case Routes.businessCard:
        return MaterialPageRoute(builder: (_) => const BusinessCardScreen());
      case Routes.flutterNews:
        return MaterialPageRoute(builder: (_) => const FlutterNewsPage());
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
