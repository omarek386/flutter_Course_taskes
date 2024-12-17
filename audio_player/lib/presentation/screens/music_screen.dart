import '../widgets/home/inti_audio.dart';
import '../widgets/music/control_unit_of_music_screen.dart';
import '../widgets/music/poster_widget.dart';
import '../widgets/music/slider_and_time_row.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_screen.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({
    super.key,
  });

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    intAudio(setState);
    isPlaying = playerState == PlayerState.playing;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // spacing: 10,
      children: [
        PosterWidget(),
        ControlUnitOfMusicScreen(),
        SliderAndTimeRow(),
        SizedBox(height: 20.h),
      ],
    );
  }
}
