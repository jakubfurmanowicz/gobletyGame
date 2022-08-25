import 'goblety_field.dart';
import 'goblety_pawn.dart';

class Winner {
  WinnerType winnerType(List<GobletyField> map) {
    final isBlueWinner = winnerTypeForColor(map, PawnColor.blue) == WinnerType.blue;
    final isOrangeWinner = winnerTypeForColor(map, PawnColor.orange) == WinnerType.orange;

    if (isBlueWinner && isOrangeWinner) {

      return WinnerType.draw;
    } else if (isBlueWinner) {
      print('Blue is the winner');
      return WinnerType.blue;
    } else if (isOrangeWinner) {
      print('Orange is the winner');
      return WinnerType.orange;
    } else {
      return WinnerType.playing;
    }
  }

  WinnerType winnerTypeForColor(List<GobletyField> map, PawnColor pawnColor) {
    final data = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];
    for (var element in data) {
      final allPawnFields =
          element.map((e) => map[e]).every((element) => element is PawnField);
      if (allPawnFields) {
        final pawnFields = element.map((e) => map[e] as PawnField).toList();

        final isWinner =
            pawnFields.every((element) => element.pawn.color == pawnColor);

        if (isWinner) {
          switch (pawnColor) {
            case PawnColor.blue:
              print('Blue is the winner');
              return WinnerType.blue;
            case PawnColor.orange:
              print('Orange is the winner');
              return WinnerType.orange;
          }
        }
      }
    }
    return WinnerType.playing;
  }
}

enum WinnerType { orange, blue, draw, playing }
