import 'package:day1/CaloriesCalculator.dart';
import 'package:day1/FileLoader.dart' as FileLoader;

Future<void> main(List<String> arguments) async {
  var input = await FileLoader.readInput();
  var calories = CalculateCalories(input);

  print("Biggest Calories: ${calories[0]}, Second biggest Calories: ${calories[1]}, Third biggest Calories: ${calories[2]}");
}
