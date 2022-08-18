import 'dart:io';

import 'goblety_board.dart';
import 'goblety_draw_board.dart';
import 'goblety_pawn.dart';
import 'goblety_winner.dart';

void main(List<String> arguments) {
  GobletyBoard board = GobletyBoard();
  board.init();
  Winner winner = Winner();
  GobletyDrawBoard drawBoard = GobletyDrawBoard();
  drawBoard.draw(board.flatMap());

  while (winner.winnerType(board.flatMap()) == WinnerType.draw) {
    print("Gracz: ${board.player}");
    drawBoard.drawPawns(board.currentPlayer().pawns);
    print('Czy chcesz przecunąć swój pionek? (y/n)');
    final moveOrNot = stdin.readLineSync()?.toLowerCase();

    if (moveOrNot == 'y') {
      print(
          "Wybierz pole z którego chcesz przesunąć pionek(możesz przesunąć największego gobleta)");
      final moveFrom = int.parse(stdin.readLineSync()?.toLowerCase() ?? "0");
      print("Na które pole chcesz przesunąć pionek");
      final moveTo = int.parse(stdin.readLineSync()?.toLowerCase() ?? "0");
      board.move(moveFrom, moveTo);
      drawBoard.draw(board.flatMap());
    } else {
      print("Na którym polu chcesz postawić pionek");
      final choose = int.parse(stdin.readLineSync()?.toLowerCase() ?? "0");
      print("Wybierz wielkość gobleta(0 = small, 1 = medium, 2 = large)");
      final chooseSizeOf =
          int.parse(stdin.readLineSync()?.toLowerCase() ?? "0");
      board.put(PawnSize.values[chooseSizeOf], choose);
      drawBoard.draw(board.flatMap());
    }
  }
}
