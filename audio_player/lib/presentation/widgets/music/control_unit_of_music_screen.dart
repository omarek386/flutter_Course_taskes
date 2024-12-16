import 'package:audio_player/constants/musics.dart';
import 'package:audio_player/presentation/screens/home_screen.dart';
import 'package:audio_player/presentation/widgets/home/list_of_music.dart';
import 'package:audio_player/presentation/widgets/music/play_pause_button.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

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
          icon: Icon(Icons.skip_next),
          iconSize: 40,
        ),
      ],
    );
  }
}
