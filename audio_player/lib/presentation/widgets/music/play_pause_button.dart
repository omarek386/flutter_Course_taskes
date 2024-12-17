import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/musics.dart';
import '../../screens/home_screen.dart';
import '../home/list_of_music.dart';

class PlayPauseButton extends StatelessWidget {
  const PlayPauseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => audioPlayer.stop(),
      onTap: () {
        isPlaying
            ? audioPlayer.pause()
            : audioPlayer.play(AssetSource(musics[myIndex].path));
      },
      child: CircleAvatar(
        radius: 30.r,
        backgroundColor: Colors.blue,
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
          size: 40.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
