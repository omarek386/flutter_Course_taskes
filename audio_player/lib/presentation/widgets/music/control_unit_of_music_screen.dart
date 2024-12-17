import '../../../constants/musics.dart';
import '../../screens/home_screen.dart';
import '../home/list_of_music.dart';
import 'play_pause_button.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ControlUnitOfMusicScreen extends StatelessWidget {
  const ControlUnitOfMusicScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            audioPlayer.stop();
            if (myIndex >= 0) {
              myIndex--;
            }
            selectedMusic = musics[myIndex].title;
            audioPlayer.play(
              AssetSource(musics[myIndex].path),
            );
          },
          icon: Icon(Icons.skip_previous),
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
          icon: Icon(Icons.skip_next),
          iconSize: 40.sp,
        ),
      ],
    );
  }
}
