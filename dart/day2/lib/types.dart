class Pairing {
  RPS opponent;
  RPS player;

  Pairing(this.opponent, this.player);

  RPS get getOpponent {
    return opponent;
  }

  RPS get getPlayer {
    return player;
  }

  int evaluateResult() {
    var bonus = getBonusForDecision(player);

    if (opponent == player) {
      return bonus + 3;
    } else if (opponent == RPS.paper) {
      if (player == RPS.rock) {
        return bonus + 0;
      } else {
        return bonus + 6;
      }
    } else if (opponent == RPS.rock) {
      if (player == RPS.paper) {
        return bonus + 6;
      } else {
        return bonus + 0;
      }
    } else {
      if (player == RPS.rock) {
        return bonus + 6;
      } else {
        return bonus + 0;
      }
    }
  }

  int getBonusForDecision(RPS decision) {
    switch (decision) {
      case RPS.rock:
        return 1;
      case RPS.paper:
        return 2;
      case RPS.scissor:
        return 3;
    }
  }
}

enum RPS { rock, paper, scissor }

RPS getEnumFromIdentifier(String identifier) {
  switch (identifier) {
    case "A":
    case "X":
      {
        return RPS.rock;
      }
    case "B":
    case "Y":
      {
        return RPS.paper;
      }
    case "C":
    case "Z":
      {
        return RPS.scissor;
      }
    default:
      {
        throw Exception("invalid input");
      }
  }
}
