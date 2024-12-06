import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 3,
            ),
            Icon(Icons.messenger_outline_rounded, size: 250),
            Text('Welcome Chat UI App',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Spacer(
              flex: 1,
            ),
            CircularProgressIndicator(),
            Spacer(
              flex: 1,
            ),
            Text('Loading...'),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
