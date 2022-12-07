import 'dart:io';

import 'package:day2/types.dart';

Future<List<Pairing>> loadPairings() async {
  var file = File("input");
  var fileContent = await file.readAsLines();

  var pairings = <Pairing>[];

  for (var line in fileContent) {
    var opponentDecision = geDecisionFromIdentifier(line[0]);
    var playerDecision = getNeededResultFromString(line[2]);
    var pairing = Pairing(opponentDecision, playerDecision);
    pairings.add(pairing);
  }

  return pairings;
}
