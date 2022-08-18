import 'goblety_field.dart';
import 'goblety_pawn.dart';

class Winner {
  WinnerType winnerType(List<GobletyField> map) {
    String whoIsTheWinner = '';
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
        final colorFirst = pawnFields.first.pawn.color;
        final allSameColor =
            pawnFields.every((element) => element.pawn.color == colorFirst);
        if (allSameColor) {
          switch (colorFirst) {
            case PawnColor.blue:
              print(whoIsTheWinner = 'Blue is the winner');
              return WinnerType.blue;
            case PawnColor.orange:
              print(whoIsTheWinner = 'Orange is the winner');
              return WinnerType.orange;
          }
        }
      }
    }
    return WinnerType.draw;
  }
}

enum WinnerType { orange, blue, draw }
