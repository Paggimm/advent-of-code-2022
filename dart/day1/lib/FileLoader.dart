import 'dart:io';

Future<List<String>> readInput() async {
  var file = File("puzzle_input");
  var fileContent = await file.readAsLines();
  return fileContent;
}