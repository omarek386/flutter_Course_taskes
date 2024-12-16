import '../../screens/home_screen.dart';

intAudio(setState) {
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
