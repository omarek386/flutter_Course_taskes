import 'package:flutter/material.dart';
import 'package:quiz_app/constants/router.dart';
import 'package:quiz_app/helpers/app_router.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'quiz app',
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      initialRoute: Routers.splashScreen,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
