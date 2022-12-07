class Pairing {
  Decision opponent;
  NeededResult neededResult;

  Pairing(this.opponent, this.neededResult);

  /// calculates the points for this pair
  int evaluateResult() {
    var playerDecision = _getPlayerDecision(opponent, neededResult);
    var bonus = _getBonusForDecision(playerDecision);

    if (opponent == playerDecision) {
      return bonus + 3;
    } else if (opponent == Decision.paper) {
      if (playerDecision == Decision.rock) {
        return bonus + 0;
      } else {
        return bonus + 6;
      }
    } else if (opponent == Decision.rock) {
      if (playerDecision == Decision.paper) {
        return bonus + 6;
      } else {
        return bonus + 0;
      }
    } else {
      if (playerDecision == Decision.rock) {
        return bonus + 6;
      } else {
        return bonus + 0;
      }
    }
  }

  /// creates the players decision according to opponent decision and needed result
  Decision _getPlayerDecision(
      Decision opponentDecision, NeededResult neededResult) {
    if (opponentDecision == Decision.rock) {
      switch (neededResult) {
        case NeededResult.lose:
          return Decision.scissor;
        case NeededResult.draw:
          return Decision.rock;
        case NeededResult.win:
          return Decision.paper;
      }
    } else if (opponentDecision == Decision.paper) {
      switch (neededResult) {
        case NeededResult.win:
          return Decision.scissor;
        case NeededResult.lose:
          return Decision.rock;
        case NeededResult.draw:
          return Decision.paper;
      }
    } else {
      switch (neededResult) {
        case NeededResult.draw:
          return Decision.scissor;
        case NeededResult.win:
          return Decision.rock;
        case NeededResult.lose:
          return Decision.paper;
      }
    }
  }

  int _getBonusForDecision(Decision decision) {
    switch (decision) {
      case Decision.rock:
        return 1;
      case Decision.paper:
        return 2;
      case Decision.scissor:
        return 3;
    }
  }

  @override
  String toString() {
    return "opponent decision: $opponent and strategy: $neededResult and points: ${evaluateResult()}";
  }
}

enum Decision { rock, paper, scissor }

Decision geDecisionFromIdentifier(String identifier) {
  switch (identifier) {
    case "A":
      return Decision.rock;
    case "B":
      return Decision.paper;
    case "C":
      return Decision.scissor;
    default:
      throw Exception("invalid input");
  }
}

enum NeededResult { lose, draw, win }

NeededResult getNeededResultFromString(String indentifier) {
  switch (indentifier) {
    case "X":
      return NeededResult.lose;
    case "Y":
      return NeededResult.draw;
    case "Z":
      return NeededResult.win;
    default:
      throw Exception("invalid input");
  }
}
