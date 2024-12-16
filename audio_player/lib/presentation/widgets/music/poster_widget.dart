import 'package:audio_player/constants/animations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({
    super.key,
    required this.isPlaying,
    required this.image,
  });
  final String image;
  final bool isPlaying;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
            width: 450,
            height: 450,
            child: Lottie.asset(
              MyAnimations.lottieMusicAnimation,
              // fit: BoxFit.cover,
              // repeat: isPlaying ? true : false,
              animate: isPlaying,

              // animate: isPlaying ? true : false,
            )),
        SizedBox(
          width: 300,
          height: 300,
          child: ClipOval(
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
