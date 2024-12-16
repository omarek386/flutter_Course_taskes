import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  Duration duration = Duration();
  Duration position = Duration();
  PlayerState playerState = PlayerState.stopped;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        duration = event;
      });
    });
    audioPlayer.onPositionChanged.listen((event) {
      setState(() {
        position = event;
      });
    });
    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        playerState = event;
      });
    });

    audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        position = Duration();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    log('playerState: $playerState');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Player'),
      ),
      body: Center(
        child: Column(
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {
                audioPlayer.play(AssetSource('wala_youm.mp3'));
              },
              child: const Text('Play'),
            ),
            ElevatedButton(
              onPressed: () {
                audioPlayer.pause();
              },
              child: const Text('pause'),
            ),
            ElevatedButton(
              onPressed: () {
                audioPlayer.stop();
              },
              child: const Text('stop'),
            ),
            Row(
              children: [
                Text(position.toString().substring(2, 7)),
                const Text(' / '),
                Text(duration.toString().substring(2, 7)),
                Slider(
                  value: position.inSeconds.toDouble(),
                  min: 0,
                  max: duration.inSeconds.toDouble(),
                  onChanged: (value) {
                    audioPlayer.seek(Duration(seconds: value.toInt()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
