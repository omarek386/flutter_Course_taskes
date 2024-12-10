import 'package:flutter/material.dart';
import 'package:game_calc/helper/device_size.dart';
import 'package:game_calc/models/player.dart';

class RoundScoreBox extends StatelessWidget {
  const RoundScoreBox({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: context.deviceHeight * 0.93,
      width: context.deviceWidth / 3,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        border: const Border.fromBorderSide(BorderSide(color: Colors.black)),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            for (int i = 0; i < player.score.roundScores.length; i++)
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(player.score.roundScores[i].toString())),
          ],
        ),
      ),
    );
  }
}
