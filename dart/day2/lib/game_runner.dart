import 'package:day2/types.dart';

void runGame(List<Pairing> pairings) {
  var points = 0;

  for (var pair in pairings) {
    points += pair.evaluateResult();
  }

  print("Games ended with $points");
}
