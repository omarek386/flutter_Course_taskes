import '../../constants/animations.dart';
import '../../extantions/media_quiry.dart';
import '../widgets/home/control_unit.dart';
import '../widgets/home/list_of_music.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  void initState() {
    super.initState();
    intAudio(setState);
  }

  @override
  Widget build(BuildContext context) {
    isPlaying = playerState == PlayerState.playing;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          isPlaying ? 'Playing: $selectedMusic' : 'Home Screen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: context.deviceHigh,
        width: context.deviceWidth,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Lottie.asset(
              MyAnimations.lottieAstroAnimation,
              animate: isPlaying,
              height: 220.h,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                  width: context.deviceWidth,
                  height: context.deviceHigh * 0.65,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: ListOfMusic()),
            ),
            Positioned(
              bottom: 20.h,
              child: ControlUnit(),
            )
          ],
        ),
      ),
    );
  }
}
