import 'score.dart';

class Player {
  String name;
  Score score;

  Player({required this.name, required this.score});

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      name: json['name'],
      score: json['score'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'score': score,
      };
}
