import 'package:day3/file_loader.dart';

Future<void> main(List<String> arguments) async {
  var result = 0;
  var backpacks = await loadBackpacks();
  var groups = loadBackpackGroups(backpacks);

  for(var group in groups) {
    result += group.getBadgeValue();
  }

  print("Priority Sum of all badges is $result");
}
