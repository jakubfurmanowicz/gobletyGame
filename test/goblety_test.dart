import 'package:test/test.dart';

import '../bin/goblety_board.dart';
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
      'check winner after move goblet to new line if first line is full of blue and second is full of orange',
      () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.small, 0);
    board.put(PawnSize.small, 4);
    board.put(PawnSize.small, 1);
    board.put(PawnSize.medium, 0);
    board.put(PawnSize.medium, 2);
    board.put(PawnSize.small, 5);
    board.put(PawnSize.medium, 7);
    board.move(0, 3);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.draw);
  });

  test('check winner if blue are on index 0, 1, 2', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 0);
    board.put(PawnSize.large, 3);
    board.put(PawnSize.large, 1);
    board.put(PawnSize.large, 4);
    board.put(PawnSize.medium, 2);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.blue);
  });

  test('check winner if blue is on index 3, 4, 5', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 3);
    board.put(PawnSize.large, 6);
    board.put(PawnSize.large, 4);
    board.put(PawnSize.large, 7);
    board.put(PawnSize.medium, 5);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.blue);
  });

  test('check winner if blue is on index 6, 7, 8', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 6);
    board.put(PawnSize.large, 0);
    board.put(PawnSize.large, 7);
    board.put(PawnSize.large, 3);
    board.put(PawnSize.medium, 8);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.blue);
  });

  test('check winner if blue is on index 0, 3, 6', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 0);
    board.put(PawnSize.large, 1);
    board.put(PawnSize.medium, 3);
    board.put(PawnSize.medium, 4);
    board.put(PawnSize.small, 6);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.blue);
  });

  test('check winner if blue is on index 1, 4, 7', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 1);
    board.put(PawnSize.large, 0);
    board.put(PawnSize.medium, 4);
    board.put(PawnSize.medium, 5);
    board.put(PawnSize.large, 7);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.blue);
  });

  test('check winner if blue is on index 2, 5, 8', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 2);
    board.put(PawnSize.large, 0);
    board.put(PawnSize.medium, 5);
    board.put(PawnSize.medium, 4);
    board.put(PawnSize.large, 8);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.blue);
  });

  test('check winner if blue is on index 0, 4, 8', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.small, 0);
    board.put(PawnSize.small, 1);
    board.put(PawnSize.small, 4);
    board.put(PawnSize.small, 8);
    board.put(PawnSize.large, 8);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.blue);
  });

  test('check winner if blue is on index 2, 4, 6', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.small, 2);
    board.put(PawnSize.small, 1);
    board.put(PawnSize.small, 4);
    board.put(PawnSize.small, 8);
    board.put(PawnSize.large, 6);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.blue);
  });

  test('check winner if orange is on index 0, 1, 2', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 3);
    board.put(PawnSize.large, 0);
    board.put(PawnSize.large, 8);
    board.put(PawnSize.large, 1);
    board.put(PawnSize.small, 2);
    board.put(PawnSize.medium, 2);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.orange);
  });

  test('check winner if orange is on index 3, 4, 5', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 0);
    board.put(PawnSize.large, 3);
    board.put(PawnSize.large, 8);
    board.put(PawnSize.large, 4);
    board.put(PawnSize.medium, 1);
    board.put(PawnSize.medium, 5);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.orange);
  });

  test('check winner if orange is on index 6, 7, 8', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 0);
    board.put(PawnSize.large, 6);
    board.put(PawnSize.large, 5);
    board.put(PawnSize.large, 7);
    board.put(PawnSize.medium, 3);
    board.put(PawnSize.medium, 8);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.orange);
  });

  test('check winner if orange is on index 0, 3, 6', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.medium, 1);
    board.put(PawnSize.medium, 0);
    board.put(PawnSize.medium, 8);
    board.put(PawnSize.medium, 3);
    board.put(PawnSize.large, 5);
    board.put(PawnSize.large, 6);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.orange);
  });

  test('check winner if orange is on index 1, 4, 7', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 0);
    board.put(PawnSize.large, 1);
    board.put(PawnSize.large, 8);
    board.put(PawnSize.large, 4);
    board.put(PawnSize.medium, 2);
    board.put(PawnSize.medium, 7);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.orange);
  });

  test('check winner if orange is on index 2, 5, 8', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 1);
    board.put(PawnSize.large, 2);
    board.put(PawnSize.medium, 5);
    board.put(PawnSize.large, 5);
    board.put(PawnSize.small, 8);
    board.put(PawnSize.medium, 8);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.orange);
  });

  test('check winner if orange is on index 2, 5, 8', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.large, 0);
    board.put(PawnSize.large, 2);
    board.put(PawnSize.medium, 8);
    board.put(PawnSize.large, 8);
    board.put(PawnSize.small, 1);
    board.put(PawnSize.medium, 5);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.orange);
  });

  test('check winner if orange is on index 0, 4, 8', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.medium, 0);
    board.put(PawnSize.large, 0);
    board.put(PawnSize.medium, 4);
    board.put(PawnSize.large, 4);
    board.put(PawnSize.small, 8);
    board.put(PawnSize.medium, 8);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.orange);
  });

  test('check winner if orange is on index 2, 4, 6', () {
    final board = GobletyBoard();
    final winner = Winner();
    board.init();
    board.put(PawnSize.small, 2);
    board.put(PawnSize.medium, 2);
    board.put(PawnSize.medium, 4);
    board.put(PawnSize.large, 4);
    board.put(PawnSize.small, 6);
    board.put(PawnSize.medium, 6);
    final result = winner.winnerType(board.flatMap());

    expect(result, WinnerType.orange);
  });
}
