import 'package:day3/file_loader.dart';

Future<void> main(List<String> arguments) async {
  var result = 0;
  var backpacks = await loadBackpacks();

  for(var backpack in backpacks) {
    result += backpack.getErrorPriority();
  }

  print("Priority Sum of all errors is $result");
}
