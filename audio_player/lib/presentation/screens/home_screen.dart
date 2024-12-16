import 'package:audio_player/constants/animations.dart';
import 'package:audio_player/presentation/widgets/home/control_unit.dart';
import 'package:audio_player/presentation/widgets/home/list_of_music.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widgets/home/inti_audio.dart';

AudioPlayer audioPlayer = AudioPlayer();
String selectedMusic = '';
Duration duration = Duration();
Duration position = Duration();
PlayerState playerState = PlayerState.stopped;
bool isPlaying = false;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    intAudio(setState);
    isPlaying = playerState == PlayerState.playing;
    return Scaffold(
      // ToDo: Add a background color to the app bar
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Home Screen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(
                  MyAnimations.lottieAstroAnimation,
                  animate: isPlaying,
                  height: 300,
                ),
                Divider(thickness: 3, endIndent: 10, indent: 10),
                ListOfMusic(),
              ],
            ),
            Positioned(
              bottom: 20,
              child: ControlUnit(),
            )
          ],
        ),
      ),
    );
  }
}
