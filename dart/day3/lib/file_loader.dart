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

List<BackpackGroup> loadBackpackGroups(List<Backpack> backpacks) {
  var groupList = List<BackpackGroup>.empty(growable: true);
  var tempBackpackList = List<Backpack>.empty(growable: true);

  for(int i = 0; i<backpacks.length; i++) {
    // add new backpack to temp list
      tempBackpackList.add(backpacks[i]);
      // push temp list into new group when list contains 3 backpacks
      if(tempBackpackList.length == 3) {
        groupList.add(BackpackGroup(tempBackpackList));
        tempBackpackList = List<Backpack>.empty(growable: true);
      }
  }

  return groupList;
}
