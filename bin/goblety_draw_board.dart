import 'goblety_field.dart';
import 'goblety_pawn.dart';

class GobletyDrawBoard {
  void drawPawns(List<PawnSize> pawns) {
    print(pawns.map((e) => ' ${mapSize(e)} ').join());
  }

  void draw(List<GobletyField> map) {
    print('${drawField(map[0])} | ${drawField(map[1])} | ${drawField(map[2])}');
    print('---------------');
    print('${drawField(map[3])} | ${drawField(map[4])} | ${drawField(map[5])}');
    print('---------------');
    print('${drawField(map[6])} | ${drawField(map[7])} | ${drawField(map[8])}');
  }

  String drawField(GobletyField element) {
    if (element is EmptyField) {
      return '   ';
    } else if (element is PawnField) {
      return '${mapColor(element.pawn.color)}-${mapSize(element.pawn.size)}';
    }
    throw Exception();
  }

  String mapColor(PawnColor pawnField) {
    switch (pawnField) {
      case PawnColor.blue:
        return 'B';
      case PawnColor.orange:
        return 'O';
    }
  }

  String mapSize(PawnSize pawnField) {
    switch (pawnField) {
      case PawnSize.small:
        return 'S';
      case PawnSize.medium:
        return 'M';
      case PawnSize.large:
        return 'L';
    }
  }
}
