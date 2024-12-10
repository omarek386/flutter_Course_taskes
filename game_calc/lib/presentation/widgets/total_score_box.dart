import 'package:flutter/material.dart';
import 'package:game_calc/helper/device_size.dart';
import 'package:game_calc/models/player.dart';

class TotalScoreBox extends StatelessWidget {
  const TotalScoreBox({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: context.deviceWidth / 3,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        border: const Border.fromBorderSide(
          BorderSide(color: Colors.black),
        ),
      ),
      child: Text(
        player.score.totalScore.toString(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
