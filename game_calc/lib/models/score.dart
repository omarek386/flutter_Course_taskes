class Score {
  List<int> roundScores;

  Score({required this.roundScores});

  int calculateTotalScore() {
    return roundScores.reduce((value, element) => value + element);
  }

  // ignore: unnecessary_getters_setters
  int get totalScore => calculateTotalScore();
}
