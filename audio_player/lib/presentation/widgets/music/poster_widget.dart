import 'package:audio_player/constants/animations.dart';
import 'package:audio_player/constants/musics.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../screens/home_screen.dart';
import '../home/list_of_music.dart';

class PosterWidget extends StatefulWidget {
  const PosterWidget({
    super.key,
  });

  @override
  State<PosterWidget> createState() => _PosterWidgetState();
}

class _PosterWidgetState extends State<PosterWidget> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
            width: 450,
            height: 450,
            child: Lottie.asset(
              MyAnimations.lottieMusicAnimation,
              animate: isPlaying,
            )),
        SizedBox(
          width: 300,
          height: 300,
          child: ClipOval(
            child: Image.network(
              musics[myIndex].cover,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
