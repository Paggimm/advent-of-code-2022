import 'package:day4/assignment_pair_analyzer.dart';
import 'package:day4/file_loader.dart';

void main(List<String> arguments) {
  var pairs = createAssignmentPairs();
  var overlappingAssignments = calculateCompletelyOverlappingAssignments(pairs);
  print("We got $overlappingAssignments completely overlapping pairs");
}
