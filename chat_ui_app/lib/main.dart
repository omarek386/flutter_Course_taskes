import 'package:flutter/material.dart';

import 'presentation/screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: const ChatScreen(),
    );
  }
}
