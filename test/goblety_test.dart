import 'package:test/test.dart';

import '../bin/goblety_board.dart';
import '../bin/goblety_field.dart';
import '../bin/goblety_pawn.dart';
import '../bin/goblety_winner.dart';

void main() {
  test('put on empty field', () {
    final board = GobletyBoard();
    board.init();
    final pawn = GobletyPawn(PawnSize.small, PawnColor.blue);

    final result = board.put(pawn.size, 0);
    expect(result, true);
  });

  test('put medium blue on small orange', () {
    final board = GobletyBoard();
    board.init();
    board.put(PawnSize.small, 0);
    final result = board.put(PawnSize.medium, 0);
    expect(result, true);
  });

  test('put small orange on medium blue', () {
    final board = GobletyBoard();
    board.init();
    board.put(PawnSize.medium, 0);
    final result = board.put(PawnSize.small, 0);
    expect(result, false);
  });
  test('put small orange on small blue', () {
    final board = GobletyBoard();
    board.init();
    board.put(PawnSize.small, 0);
    final result = board.put(PawnSize.small, 0);
    expect(result, false);
  });

  test('move small from index 0 to empty field index 1', () {
    final board = GobletyBoard();
    board.init();
    board.put(PawnSize.small, 0);
    board.put(PawnSize.small, 2);
    final result = board.move(0, 1);
    expect(result, true);
  });

  test('move small orange from index 0 to small blue index 1', () {
    final board = GobletyBoard();
    board.init();
    board.put(PawnSize.small, 1);
    board.put(PawnSize.small, 0);
    final result = board.move(0, 1);
    expect(result, false);
  });

  test('blue starts first', () {
    final board = GobletyBoard();
    board.init();
    expect(board.player, PawnColor.blue);
  });

  test('switch players', () {
    final board = GobletyBoard();
    board.init();
    expect(board.player, PawnColor.blue);

    final result = board.put(PawnSize.small, 0);
    expect(board.player, PawnColor.orange);
  });

  test(
      'put small orange on index 0, than put medium blue on index 0, after move medium blue to index 3',
      () {
    final board = GobletyBoard();
    board.init();
    board.put(PawnSize.small, 0);
    board.put(PawnSize.small, 4);
    board.put(PawnSize.small, 1);
    board.put(PawnSize.medium, 0);
    board.put(PawnSize.medium, 2);
    board.put(PawnSize.small, 5);
    board.put(PawnSize.medium, 7);
    board.move(0, 3);
    final result = WinnerType.draw;

    expect(result, WinnerType.draw);
  });
}
