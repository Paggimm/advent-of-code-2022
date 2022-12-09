import 'package:day1/file_loader.dart' as file_loader;
import 'package:day1/calories_calculator.dart';

Future<void> main(List<String> arguments) async {
  var input = await file_loader.readInput();
  var calories = calculateCalories(input);

  print("Biggest Calories: ${calories[0]}, Second biggest Calories: ${calories[1]}, Third biggest Calories: ${calories[2]}");
}
