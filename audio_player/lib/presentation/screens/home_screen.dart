import 'package:audio_player/constants/animations.dart';
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
    // audioPlayer.stop();
    return Scaffold(
      // ToDo: Add a background color to the app bar
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(MyAnimations.lottieAstroAnimation),
            Divider(thickness: 3, endIndent: 10, indent: 10),
            ListOfMusic()
          ],
        ),
      ),
    );
  }
}
