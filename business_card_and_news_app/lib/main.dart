import 'package:business_card/constants/routes.dart';
import 'package:business_card/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    appRouter: MyAppRouter(),
  ));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key, required this.appRouter});
  MyAppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'business_card_and_flutter_news_app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
      initialRoute: Routes.home,
    );
  }
}
