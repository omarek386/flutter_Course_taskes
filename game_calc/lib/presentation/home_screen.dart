import 'package:flutter/material.dart';
import 'package:game_calc/helper/device_size.dart';
import 'package:game_calc/models/player.dart';
import 'package:game_calc/presentation/widgets/round_score_box.dart';
import 'package:game_calc/presentation/widgets/total_score_box.dart';

class AmericanDominoScreen extends StatefulWidget {
  const AmericanDominoScreen({super.key, required this.players});
  final List<Player> players;

  @override
  State<AmericanDominoScreen> createState() => _AmericanDominoScreenState();
}

class _AmericanDominoScreenState extends State<AmericanDominoScreen> {
  TextEditingController scoreController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: widget.players.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Text(widget.players[index].name),
                Expanded(
                  child: RoundScoreBox(player: widget.players[index]),
                ),
                TotalScoreBox(player: widget.players[index]),
                addScoreButton(widget.players[index], context)
              ],
            );
          },
        ),
      ),
    );
  }

  MaterialButton addScoreButton(Player player, BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text('Add Score'),
                  content: TextField(
                    controller: scoreController,
                    decoration: const InputDecoration(
                        hintText: 'Enter score',
                        labelText: 'Score',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                    keyboardType: TextInputType.number,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        setState(() {
                          player.score.roundScores
                              .add(int.parse(scoreController.text));
                        });
                        scoreController.clear();
                      },
                      child: const Text('Add'),
                    ),
                  ],
                ));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.green,
      minWidth: context.deviceWidth / 3,
      child: const Icon(Icons.add),
    );
  }
}
