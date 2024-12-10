import 'package:flutter/material.dart';
import 'package:game_calc/models/player.dart';
import 'package:game_calc/models/score.dart';
import 'package:game_calc/presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AmericanDominoScreen(
        players: [
          Player(name: 'Player 1', score: Score(roundScores: [1, 2])),
          Player(name: 'Player 2', score: Score(roundScores: [3, 4])),
          Player(name: 'Player 3', score: Score(roundScores: [5, 6])),
          Player(name: 'Player 4', score: Score(roundScores: [7, 8])),
          Player(name: 'name', score: Score(roundScores: [9, 10])),
        ],
      ),
    );
  }
}
