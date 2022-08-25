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

  while (winner.winnerType(board.flatMap()) == WinnerType.playing) {
    print("Player: ${board.player}");
    drawBoard.drawPawns(board.currentPlayer().pawns);
    print('Do you want to move your pawn? (y/n)');
    final moveOrNot = stdin.readLineSync()?.toLowerCase();

    if (moveOrNot == 'y') {
      print(
          "From which field do you want to move the pawn(you can only move the biggest pawn)?");
      final moveFrom = int.tryParse(stdin.readLineSync()?.toLowerCase() ?? "0");
      print("On which field do you want to put the pawn?");
      final moveTo = int.tryParse(stdin.readLineSync()?.toLowerCase() ?? "0");
      try {
        board.move(moveFrom!, moveTo!);
      } catch (e) {
        print('Wrong values');
      }
      drawBoard.draw(board.flatMap());
    } else {
      print("Where do you want to put the pawn");
      final choose = int.tryParse(stdin.readLineSync()?.toLowerCase() ?? "0");
      print("Choose size of the pawn(0 = small, 1 = medium, 2 = large)");
      final chooseSizeOf =
          int.tryParse(stdin.readLineSync()?.toLowerCase() ?? "0");
      try {
        board.put(PawnSize.values[chooseSizeOf!], choose!);
      } catch (e) {
        print('Wrong values');
      }
      drawBoard.draw(board.flatMap());
    }
  }
}
