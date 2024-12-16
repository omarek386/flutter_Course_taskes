import 'package:audio_player/constants/animations.dart';
import 'package:audio_player/constants/musics.dart';
import 'package:audio_player/presentation/screens/music_screen.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

AudioPlayer audioPlayer = AudioPlayer();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Duration duration = Duration();
  Duration position = Duration();
  PlayerState playerState = PlayerState.stopped;
  bool isPlaying = false;

  @override
  void initState() {
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
    // audioPlayer.stop();
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(MyAnimations.lottieAstroAnimation),
          Divider(thickness: 3, endIndent: 10, indent: 10),
          Expanded(
            child: ListView.builder(
              // itemExtent: 100,
              physics: const BouncingScrollPhysics(),
              itemCount: musics.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    audioPlayer.play(
                      AssetSource(musics[index].path),
                    );

                    // i want to make a controller for the music player and if i click on the music player it will take me to the music screen
                    Scaffold.of(context).showBottomSheet(
                      (context) => MusicScreen(
                        musicPath: musics[index].path,
                        // isPlaying: isPlaying,
                        image: musics[index].cover,
                        // playerState: playerState,
                        // duration: duration,
                        // position: position,

                        // musicPath: musics[index].path,
                      ),
                    );
                  },
                  // tileColor: Colors.red,
                  title: Text(musics[index].title),
                  subtitle: Text(musics[index].artist),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      musics[index].cover,
                      fit: BoxFit.cover,
                      width: 60,
                      // height: 100,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
