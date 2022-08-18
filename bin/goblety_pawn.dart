class GobletyPawn implements Comparable<GobletyPawn> {
  final PawnSize size;
  final PawnColor color;

  GobletyPawn(this.size, this.color);

  @override
  int compareTo(GobletyPawn other) {
    return size.index.compareTo(other.size.index);
  }
}

enum PawnSize { small, medium, large }

enum PawnColor { blue, orange }
