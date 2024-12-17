import '../../screens/home_screen.dart';

intAudio(setState) {
  audioPlayer.onDurationChanged.listen((event) {
    duration = event;
  });
  audioPlayer.onPositionChanged.listen((event) {
    setState(() {
      position = event;
    });
  });
  audioPlayer.onPlayerStateChanged.listen((event) {
    playerState = event;
  });

  audioPlayer.onPlayerComplete.listen((event) {
    position = Duration();
  });
}
