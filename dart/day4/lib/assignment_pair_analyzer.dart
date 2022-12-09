import 'package:day4/types.dart';

int calculateCompletelyOverlappingAssignments(List<AssignmentPair> pairs) {
  var counter = 0;

  for(var pair in pairs) {
    if(_checkOverlapping(pair)){
      counter++;
    }
  }

  return counter;
}

bool _checkOverlapping(AssignmentPair pair) {
  if(pair.assignment1.from >= pair.assignment2.from && pair.assignment1.to <= pair.assignment2.to) {
    return true;
  }
  if(pair.assignment2.from >= pair.assignment1.from && pair.assignment2.to <= pair.assignment1.to) {
    return true;
  }
  return false;
}