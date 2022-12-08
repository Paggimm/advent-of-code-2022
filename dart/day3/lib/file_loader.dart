import 'dart:io';

import 'package:day3/types.dart';

Future<List<Backpack>> loadBackpacks() async {
  var file = File("input");
  var fileContent = await file.readAsLines();

  var backpacks = <Backpack>[];

  for (var line in fileContent) {
    var compartmentLength = line.length ~/ 2;
    var compartment1 = line.substring(0, compartmentLength);
    var compartment2 = line.substring(compartmentLength, line.length);
    var backpack = Backpack(compartment1, compartment2);
    backpacks.add(backpack);
  }

  return backpacks;
}
