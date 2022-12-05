import 'dart:ffi';

List<int> CalculateCalories(List<String> input) {
  final elfList = <List<int>>[];
  var tempElf = <int>[];

  for(var line in input) {
    if(line != '') {
      tempElf.add(int.parse(line));
    }
    else {
      elfList.add(tempElf);
      tempElf = [];
    }
  }

  final calorieList = List.generate(3, (index) => 0);
  for(var elf in elfList) {
    var calorie = CalculateCaloriesForElf(elf);
    if(calorie > calorieList[0]) {
      calorieList[2] = calorieList[1];
      calorieList[1] = calorieList[0];
      calorieList[0] = calorie;
    }
    else if(calorie > calorieList[1]) {
      calorieList[2] = calorieList[1];
      calorieList[1] = calorie;
    }
    else if(calorie > calorieList[2]) {
      calorieList[2] = calorie;
    }
  }

  return calorieList;
}

int CalculateCaloriesForElf(List<int> elf) {
  var result = 0;

  for(var calorie in elf) {
    result += calorie;
  }

  return result;
}