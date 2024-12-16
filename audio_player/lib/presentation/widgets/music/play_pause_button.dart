import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayPauseButton extends StatelessWidget {
  const PlayPauseButton({
    super.key,
    required this.isPlaying,
    required this.audioPlayer,
    required this.musicPath,
  });

  final bool isPlaying;
  final AudioPlayer audioPlayer;
  final String musicPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isPlaying
            ? audioPlayer.pause()
            : audioPlayer.play(AssetSource(musicPath));
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blue,
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
          size: 40,
        ),
      ),
    );
  }
}
