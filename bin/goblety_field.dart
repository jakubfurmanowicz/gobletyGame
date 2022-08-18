import 'goblety_pawn.dart';

abstract class GobletyField {}

class EmptyField extends GobletyField {}

class PawnField extends GobletyField {
  final GobletyPawn pawn;

  PawnField(this.pawn);
}
