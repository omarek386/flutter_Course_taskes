import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/chat_screen.dart';
import 'presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat UI App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        colorScheme: const ColorScheme.dark(
          primary: Colors.blueGrey,
          secondary: Colors.teal,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: SplashScreen(),
        splashIconSize: double.infinity, // Adjust the size as needed
        centered: true,
        nextScreen: const ChatScreen(),
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
