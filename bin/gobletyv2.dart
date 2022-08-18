import 'dart:io';
import 'goblety_draw_map.dart';
import 'goblety_put_on_place.dart';
import 'goblety_winner_class.dart';

void main(List<String> arguments) {
  String? blueChoose = '';
  String? orangeChoose = '';
  String? moveOrNot = '';
  String? moveFrom = '';
  String? moveTo = '';
  String? chooseSizeOfBlue = '';
  String? chooseSizeOfOrange = '';

  DrawMap drawMap = DrawMap();
  Winner1 winner = Winner1();
  Put put = Put();

  print("Rozpoczyna gracz niebieski");
  drawMap.draw(winner.a1, winner.a2, winner.a3, winner.b1, winner.b2, winner.b3,
      winner.c1, winner.c2, winner.c3);

  while (winner.blueWinner != true || winner.orangeWinner != true) {
    if (winner.orangeWinner != true) {
      print("Niebieski wybiera pole");
      print('Czy chcesz przecunąć swój pionek? (y/n)');
      moveOrNot = stdin.readLineSync()?.toLowerCase();
      if (moveOrNot == 'y') {
        print(
            "Wybierz pole z którego chcesz przesunąć pionek(możesz przesunąć największego gobleta)");
        moveFrom = stdin.readLineSync()?.toLowerCase();
        print("Na które pole chcesz przesunąć pionek");
        moveTo = stdin.readLineSync()?.toLowerCase();
        put.moveBlueGoblet(moveFrom!, moveTo!, 'N');

        winner.winningCondition(
            put.a1PoleSmall,
            put.a1PoleMedium,
            put.a1PoleLarge,
            put.a2PoleSmall,
            put.a2PoleMedium,
            put.a2PoleLarge,
            put.a3PoleSmall,
            put.a3PoleMedium,
            put.a3PoleLarge,
            put.b1PoleSmall,
            put.b1PoleMedium,
            put.b1PoleLarge,
            put.b2PoleSmall,
            put.b2PoleMedium,
            put.b2PoleLarge,
            put.b3PoleSmall,
            put.b3PoleMedium,
            put.b3PoleLarge,
            put.c1PoleSmall,
            put.c1PoleMedium,
            put.c1PoleLarge,
            put.c2PoleSmall,
            put.c2PoleMedium,
            put.c2PoleLarge,
            put.c3PoleSmall,
            put.c3PoleMedium,
            put.c3PoleLarge);

        drawMap.draw(winner.a1, winner.a2, winner.a3, winner.b1, winner.b2,
            winner.b3, winner.c1, winner.c2, winner.c3);
      } else {
        print("Na którym polu chcesz postawić pionek");
        blueChoose = stdin.readLineSync();
        print("Wybierz wielkość gobleta(S = small, M = medium, L = large)");
        chooseSizeOfBlue = stdin.readLineSync()?.toLowerCase();
        if (put.countBlue < 6) {
          put.putBlue(blueChoose!, chooseSizeOfBlue!, 'N');
        } else {
          print("Przekroczyłeś ilość");
        }

        winner.winningCondition(
            put.a1PoleSmall,
            put.a1PoleMedium,
            put.a1PoleLarge,
            put.a2PoleSmall,
            put.a2PoleMedium,
            put.a2PoleLarge,
            put.a3PoleSmall,
            put.a3PoleMedium,
            put.a3PoleLarge,
            put.b1PoleSmall,
            put.b1PoleMedium,
            put.b1PoleLarge,
            put.b2PoleSmall,
            put.b2PoleMedium,
            put.b2PoleLarge,
            put.b3PoleSmall,
            put.b3PoleMedium,
            put.b3PoleLarge,
            put.c1PoleSmall,
            put.c1PoleMedium,
            put.c1PoleLarge,
            put.c2PoleSmall,
            put.c2PoleMedium,
            put.c2PoleLarge,
            put.c3PoleSmall,
            put.c3PoleMedium,
            put.c3PoleLarge);

        drawMap.draw(winner.a1, winner.a2, winner.a3, winner.b1, winner.b2,
            winner.b3, winner.c1, winner.c2, winner.c3);
      }
    } else {
      print('Wygrywa pomarańczowy');
      exit(0);
    }

    if (winner.blueWinner != true) {
      print("Pomarańczowy wybiera pole");
      print('Czy chcesz przecunąć swój pionek? (y/n)');
      moveOrNot = stdin.readLineSync()?.toLowerCase();
      if (moveOrNot == 'y') {
        print(
            "Wybierz pole z którego chcesz przesunąć pionek(możesz przesunąć największego gobleta)");
        moveFrom = stdin.readLineSync()?.toLowerCase();

        print("Na które pole chcesz przesunąć pionek");
        moveTo = stdin.readLineSync()?.toLowerCase();
        put.moveOrangeGoblet(moveFrom!, moveTo!, 'P');

        winner.winningCondition(
            put.a1PoleSmall,
            put.a1PoleMedium,
            put.a1PoleLarge,
            put.a2PoleSmall,
            put.a2PoleMedium,
            put.a2PoleLarge,
            put.a3PoleSmall,
            put.a3PoleMedium,
            put.a3PoleLarge,
            put.b1PoleSmall,
            put.b1PoleMedium,
            put.b1PoleLarge,
            put.b2PoleSmall,
            put.b2PoleMedium,
            put.b2PoleLarge,
            put.b3PoleSmall,
            put.b3PoleMedium,
            put.b3PoleLarge,
            put.c1PoleSmall,
            put.c1PoleMedium,
            put.c1PoleLarge,
            put.c2PoleSmall,
            put.c2PoleMedium,
            put.c2PoleLarge,
            put.c3PoleSmall,
            put.c3PoleMedium,
            put.c3PoleLarge);

        drawMap.draw(winner.a1, winner.a2, winner.a3, winner.b1, winner.b2,
            winner.b3, winner.c1, winner.c2, winner.c3);
      } else {
        print("Na którym polu chcesz postawić pionek");
        orangeChoose = stdin.readLineSync();
        print("Wybierz wielkość gobleta(S = small, M = medium, L = large)");
        chooseSizeOfOrange = stdin.readLineSync()?.toLowerCase();
        if (put.countOrange < 6) {
          put.putOrange(orangeChoose!, chooseSizeOfOrange!);
        } else {
          print('Przekroczyłeś ilość\n');
        }

        winner.winningCondition(
            put.a1PoleSmall,
            put.a1PoleMedium,
            put.a1PoleLarge,
            put.a2PoleSmall,
            put.a2PoleMedium,
            put.a2PoleLarge,
            put.a3PoleSmall,
            put.a3PoleMedium,
            put.a3PoleLarge,
            put.b1PoleSmall,
            put.b1PoleMedium,
            put.b1PoleLarge,
            put.b2PoleSmall,
            put.b2PoleMedium,
            put.b2PoleLarge,
            put.b3PoleSmall,
            put.b3PoleMedium,
            put.b3PoleLarge,
            put.c1PoleSmall,
            put.c1PoleMedium,
            put.c1PoleLarge,
            put.c2PoleSmall,
            put.c2PoleMedium,
            put.c2PoleLarge,
            put.c3PoleSmall,
            put.c3PoleMedium,
            put.c3PoleLarge);

        drawMap.draw(winner.a1, winner.a2, winner.a3, winner.b1, winner.b2,
            winner.b3, winner.c1, winner.c2, winner.c3);
      }
    } else {
      print("Wygrywa niebieski");
      exit(0);
    }
  }
}
