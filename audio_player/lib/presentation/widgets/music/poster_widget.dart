import '../../../constants/animations.dart';
import '../../../constants/musics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
            width: 450.w,
            height: 450.h,
            child: Lottie.asset(
              MyAnimations.lottieMusicAnimation,
              animate: isPlaying,
            )),
        SizedBox(
          width: 250.w,
          height: 250.h,
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
