import 'package:audio_player/extantions/media_quiry.dart';
import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';

class SliderAndTimeRow extends StatelessWidget {
  const SliderAndTimeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(position.toString().substring(2, 7),
            style: const TextStyle(color: Colors.white)),
        SizedBox(
          width: context.deviceWidth * 0.75,
          child: Slider(
            activeColor: Colors.blue,
            // thumbColor: Colors.red,
            // secondaryActiveColor: Colors.red,
            inactiveColor: Colors.grey,
            label: 'Seek',

            value: position.inSeconds.toDouble(),
            min: 0,
            max: duration.inSeconds.toDouble(),
            onChanged: (value) {
              audioPlayer.seek(Duration(seconds: value.toInt()));
            },
          ),
        ),
        Text(duration.toString().substring(2, 7),
            style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
