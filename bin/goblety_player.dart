import 'goblety_pawn.dart';

class Player {
  final List<PawnSize> pawns;

  Player(this.pawns);

  bool haveSize(PawnSize pawnSize) {
    return pawns.indexOf(pawnSize) != -1;
  }

  void removeSize(PawnSize pawnSize) {
    pawns.remove(pawnSize);
  }
}
