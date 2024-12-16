import 'package:audio_player/presentation/widgets/home/inti_audio.dart';
import 'package:audio_player/presentation/widgets/music/play_pause_button.dart';
import 'package:audio_player/presentation/widgets/music/poster_widget.dart';
import 'package:audio_player/presentation/widgets/music/slider_and_time_row.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({
    super.key,
    // required this.duration,
    // required this.position,
    // required this.playerState,
    required this.image,
    required this.musicPath,
    // required this.isPlaying,
  });
  // bool isPlaying;
  final String image;
  final String musicPath;

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  // bool isPlaying = false;
  // Duration duration = Duration();
  // Duration position = Duration();
  // PlayerState playerState = PlayerState.stopped;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   audioPlayer.onDurationChanged.listen((event) {
  //     setState(() {
  //       duration = event;
  //     });
  //   });
  //   audioPlayer.onPositionChanged.listen((event) {
  //     setState(() {
  //       position = event;
  //     });
  //   });
  //   audioPlayer.onPlayerStateChanged.listen((event) {
  //     setState(() {
  //       playerState = event;
  //     });
  //   });

  //   audioPlayer.onPlayerComplete.listen((event) {
  //     setState(() {
  //       position = Duration();
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    intAudio(setState);
    isPlaying = playerState == PlayerState.playing;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // spacing: 10,
      children: [
        PosterWidget(
          isPlaying: isPlaying,
          image: widget.image,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.skip_previous),
              iconSize: 40,
            ),
            PlayPauseButton(
                isPlaying: isPlaying,
                audioPlayer: audioPlayer,
                musicPath: widget.musicPath),
            IconButton(
              onPressed: () {
                audioPlayer.pause();
              },
              icon: Icon(Icons.skip_next),
              iconSize: 40,
            ),
          ],
        ),
        SliderAndTimeRow(
            position: position, duration: duration, audioPlayer: audioPlayer),
        SizedBox(height: 20),
      ],
    );
  }
}
