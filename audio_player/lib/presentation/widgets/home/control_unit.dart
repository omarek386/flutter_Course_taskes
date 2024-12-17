import '../../../constants/musics.dart';
import '../../../extantions/media_quiry.dart';
import '../../screens/home_screen.dart';
import 'list_of_music.dart';
import '../music/play_pause_button.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ControlUnit extends StatelessWidget {
  const ControlUnit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20.r),
      ),
      // height: 50,
      padding: const EdgeInsets.all(8).r,
      width: context.deviceWidth * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              audioPlayer.stop();
              if (myIndex >= 0) {
                myIndex--;
              }
              selectedMusic = musics[myIndex].title;
              audioPlayer.play(AssetSource(musics[myIndex].path));
            },
            icon: const Icon(Icons.skip_previous),
            iconSize: 40.sp,
          ),
          PlayPauseButton(),
          IconButton(
            onPressed: () {
              audioPlayer.stop();

              if (myIndex < musics.length - 1) {
                myIndex++;
              }
              selectedMusic = musics[myIndex].title;
              audioPlayer.play(AssetSource(musics[myIndex].path));
            },
            icon: const Icon(Icons.skip_next),
            iconSize: 40.sp,
          ),
        ],
      ),
    );
  }
}
