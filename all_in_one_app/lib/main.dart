import 'package:all_in_one_app/router.dart';
import 'package:all_in_one_app/screens/home_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp(
    router: MyAppRouter(),
  ));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key, required this.router});
  MyAppRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat UI App',
      theme: ThemeData(
        // brightness: Brightness.dark,
        // primarySwatch: Colors.blueGrey,
        // colorScheme: const ColorScheme.dark(
        // primary: Colors.blueGrey,
        // secondary: Colors.teal,
        // ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: const SplashScreen(),
        splashIconSize: double.infinity, // Adjust the size as needed
        centered: true,
        // nextRoute: Routes.home,
        nextScreen: const MyHomePage(),
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
      ),
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}
