import 'dart:io';

import 'package:day4/types.dart';

List<AssignmentPair> createAssignmentPairs() {
  var file = File("input");
  var fileContent = file.readAsLinesSync();

  var assignmentPairs = List<AssignmentPair>.empty(growable: true);

  for(var line in fileContent) {
    var rawPair = line.split(",");

    var assignment1 = Assignment(int.parse(rawPair[0].split("-")[0]), int.parse(rawPair[0].split("-")[1]));
    var assignment2 = Assignment(int.parse(rawPair[1].split("-")[0]), int.parse(rawPair[1].split("-")[1]));
    assignmentPairs.add(AssignmentPair(assignment1, assignment2));
  }

  return assignmentPairs;
}