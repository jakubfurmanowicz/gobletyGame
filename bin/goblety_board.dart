import 'goblety_field.dart';
import 'goblety_pawn.dart';
import 'goblety_player.dart';

class GobletyBoard {
  late final orangePlayer;
  late final bluePlayer;

  late final List<List<GobletyField>> map;
  late PawnColor player;

  void init() {
    orangePlayer = Player([
      PawnSize.small,
      PawnSize.small,
      PawnSize.medium,
      PawnSize.medium,
      PawnSize.large,
      PawnSize.large,
    ]);
    bluePlayer = Player([
      PawnSize.small,
      PawnSize.small,
      PawnSize.medium,
      PawnSize.medium,
      PawnSize.large,
      PawnSize.large,
    ]);

    map = List.generate(9, (index) => [EmptyField()]);
    player = PawnColor.blue;
  }

  Player currentPlayer() {
    switch (player) {
      case PawnColor.blue:
        return bluePlayer;
      case PawnColor.orange:
        return orangePlayer;
    }
  }

  bool put(PawnSize pawnSize, int index) {
    final fieldPawn = map[index];
    final lastPawn = fieldPawn.last;
    final roundPlayer = currentPlayer();
    if (roundPlayer.haveSize(pawnSize)) {
      final pawn = GobletyPawn(pawnSize, player);
      final result = set(pawn, lastPawn, fieldPawn);
      if (result) {
        roundPlayer.removeSize(pawnSize);
      }
      return result;
    } else {
      return false;
    }
  }

  bool set(
      GobletyPawn pawn, GobletyField lastPawn, List<GobletyField> fieldPawn) {
    if (player != pawn.color) {
      return false;
    }

    if (lastPawn is EmptyField) {
      fieldPawn.add(PawnField(pawn));
      player = PawnColor.values[(player.index + 1) % PawnColor.values.length];
      return true;
    } else if (lastPawn is PawnField) {
      final isBigger = pawn.compareTo(lastPawn.pawn) > 0;
      if (isBigger) {
        fieldPawn.add(PawnField(pawn));
        player = PawnColor.values[(player.index + 1) % PawnColor.values.length];

        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  bool move(int fromIndex, int toIndex) {
    final currentPawn = map[fromIndex].last;

    if (currentPawn is EmptyField) {
      return false;
    } else if (currentPawn is PawnField) {
      final pawn = currentPawn.pawn;

      if (player != pawn.color) {
        return false;
      }
      final fieldPawn = map[toIndex];
      final lastPawn = fieldPawn.last;
      if (set(pawn, lastPawn, fieldPawn)) {
        map[fromIndex].removeLast();
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  List<GobletyField> flatMap() {
    return map.map((e) => e.last).toList();
  }
}
