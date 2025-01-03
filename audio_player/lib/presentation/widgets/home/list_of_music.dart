import '../../../constants/animations.dart';
import '../../../constants/musics.dart';
import '../../screens/home_screen.dart';
import '../../screens/music_screen.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

int myIndex = 0;

class ListOfMusic extends StatelessWidget {
  const ListOfMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 355.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: musics.length,
        itemBuilder: (context, index) {
          if (selectedMusic == musics[index].title) {
            myIndex = index;
          }
          return musicInfoBox(index, context);
        },
      ),
    );
  }

  ListTile musicInfoBox(int index, BuildContext context) {
    return ListTile(
      onTap: () {
        if (selectedMusic != musics[index].title) {
          audioPlayer.play(AssetSource(musics[index].path));
          selectedMusic = musics[index].title;
        }
        Scaffold.of(context).showBottomSheet(
          (context) => MusicScreen(),
        );
      },
      title: Text(
        musics[index].title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        musics[index].artist,
        style: TextStyle(color: const Color.fromARGB(255, 190, 188, 188)),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Image.network(
          musics[index].cover,
          fit: BoxFit.cover,
          width: 60.w,
        ),
      ),
      trailing: selectedMusic == musics[index].title
          ? Lottie.asset(MyAnimations.lottiePlayingAnimation, animate: true)
          : Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
    );
  }
}
