import 'package:audio_player/constants/musics.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../home/list_of_music.dart';

class PlayPauseButton extends StatelessWidget {
  const PlayPauseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isPlaying
            ? audioPlayer.pause()
            : audioPlayer.play(AssetSource(musics[myIndex].path));
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blue,
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
