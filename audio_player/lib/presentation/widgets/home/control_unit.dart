import 'package:audio_player/constants/musics.dart';
import 'package:audio_player/extantions/media_quiry.dart';
import 'package:audio_player/presentation/screens/home_screen.dart';
import 'package:audio_player/presentation/widgets/home/list_of_music.dart';
import 'package:audio_player/presentation/widgets/music/play_pause_button.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ControlUnit extends StatelessWidget {
  const ControlUnit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      // height: 50,
      padding: const EdgeInsets.all(8),
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
            iconSize: 40,
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
            iconSize: 40,
          ),
        ],
      ),
    );
  }
}
