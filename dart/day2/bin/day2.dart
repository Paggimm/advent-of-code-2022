import 'package:day2/file_loader.dart';
import 'package:day2/game_runner.dart';

Future<void> main(List<String> arguments) async {
  var pairings = await loadPairings();

  runGame(pairings);
}
