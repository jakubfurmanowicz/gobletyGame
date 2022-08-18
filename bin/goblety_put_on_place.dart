class Put {
  String a1PoleSmall = '';
  String a1PoleMedium = '';
  String a1PoleLarge = '';
  String a2PoleSmall = '';
  String a2PoleMedium = '';
  String a2PoleLarge = '';
  String a3PoleSmall = '';
  String a3PoleMedium = '';
  String a3PoleLarge = '';
  String b1PoleSmall = '';
  String b1PoleMedium = '';
  String b1PoleLarge = '';
  String b2PoleSmall = '';
  String b2PoleMedium = '';
  String b2PoleLarge = '';
  String b3PoleSmall = '';
  String b3PoleMedium = '';
  String b3PoleLarge = '';
  String c1PoleSmall = '';
  String c1PoleMedium = '';
  String c1PoleLarge = '';
  String c2PoleSmall = '';
  String c2PoleMedium = '';
  String c2PoleLarge = '';
  String c3PoleSmall = '';
  String c3PoleMedium = '';
  String c3PoleLarge = '';
  String? moveFrom = '';
  String? moveTo = '';
  String blue = 'N';
  String orange = 'P';
  String temp = '';
  int countBlue = 0;
  int countOrange = 0;
  String? chooseSizeOfBlue;
  String? chooseSizeOfOrange;

  String? moveBlueGoblet(String moveFrom, String moveTo, String round) {
    if (round == 'N') {
      if (moveFrom == '1') {
        if (a1PoleLarge == 'NL') {
          temp = 'NL';
          a1PoleLarge = '';
        } else if (a1PoleMedium == 'NM') {
          temp = 'NM';
          a1PoleMedium = '';
        } else if (a1PoleSmall == 'NS') {
          temp = 'NS';
          a1PoleSmall = '';
        }
      } else if (moveFrom == '2') {
        if (a2PoleLarge == 'NL') {
          temp = 'NL';
          a2PoleLarge = '';
        } else if (a2PoleMedium == 'NM') {
          temp = 'NM';
          a2PoleMedium = '';
        } else if (a2PoleSmall == 'NS') {
          temp = 'NS';
          a2PoleMedium = '';
        }
      } else if (moveFrom == '3') {
        if (a3PoleLarge == 'NL') {
          temp = 'NL';
          a3PoleLarge = '';
        } else if (a3PoleMedium == 'NM') {
          temp = 'NM';
          a3PoleMedium = '';
        } else if (a3PoleSmall == 'NS') {
          temp = 'NS';
          a3PoleSmall = '';
        }
      } else if (moveFrom == '4') {
        if (b1PoleLarge == 'NL') {
          temp = 'NL';
          b1PoleLarge = '';
        } else if (a3PoleMedium == 'NM') {
          temp = 'NM';
          b1PoleMedium = '';
        } else if (a3PoleSmall == 'NS') {
          temp = 'NS';
          b1PoleSmall = '';
        }
      } else if (moveFrom == '5') {
        if (b2PoleLarge == 'NL') {
          temp = 'NL';
          b2PoleLarge = '';
        } else if (a3PoleMedium == 'NM') {
          temp = 'NM';
          b2PoleMedium = '';
        } else if (a3PoleSmall == 'NS') {
          temp = 'NS';
          b2PoleSmall = '';
        }
      } else if (moveFrom == '6') {
        if (b3PoleLarge == 'NL') {
          temp = 'NL';
          b3PoleLarge = '';
        } else if (b3PoleMedium == 'NM') {
          temp = 'NM';
          b3PoleMedium = '';
        } else if (b3PoleSmall == 'NS') {
          temp = 'NS';
          b3PoleSmall = '';
        }
      } else if (moveFrom == '7') {
        if (c1PoleLarge == 'NL') {
          temp = 'ND';
          c1PoleLarge = '';
        } else if (c1PoleMedium == 'NM') {
          temp = 'NM';
          c1PoleMedium = '';
        } else if (c1PoleSmall == 'NS') {
          temp = 'NS';
          c1PoleSmall = '';
        }
      } else if (moveFrom == '8') {
        if (c2PoleLarge == 'NL') {
          temp = 'NL';
          c2PoleLarge = '';
        } else if (a3PoleMedium == 'NM') {
          temp = 'NM';
          c2PoleMedium = '';
        } else if (a3PoleSmall == 'NS') {
          temp = 'NS';
          c2PoleSmall = '';
        }
      } else if (moveFrom == '9') {
        if (a3PoleLarge == 'NL') {
          temp = 'NL';
          c3PoleLarge = '';
        } else if (a3PoleMedium == 'NM') {
          temp = 'NM';
          c3PoleMedium = '';
        } else if (a3PoleSmall == 'NS') {
          temp = 'NS';
          c3PoleSmall = '';
        }
      } else {
        print('Nie możesz przesunąć z tego miejsca');
      }

      if (moveTo == '1') {
        if (temp.contains('L')) {
          a1PoleLarge = 'NL';
        } else if (temp.contains('M')) {
          a1PoleMedium = 'NM';
        } else if (temp.contains('S')) {
          a1PoleSmall = 'NS';
        }
      } else if (moveTo == '2') {
        if (temp.contains('L')) {
          a2PoleLarge = 'NL';
        } else if (temp.contains('M')) {
          a2PoleMedium = 'NM';
        } else if (temp.contains('S')) {
          a2PoleSmall = 'NS';
        }
      } else if (moveTo == '3') {
        if (temp.contains('L')) {
          a3PoleLarge = 'NL';
        } else if (temp.contains('M')) {
          a3PoleMedium = 'NM';
        } else if (temp.contains('S')) {
          a3PoleSmall = 'NS';
        }
      } else if (moveTo == '4') {
        if (temp.contains('L')) {
          b1PoleLarge = 'NL';
        } else if (temp.contains('M')) {
          b1PoleMedium = 'NM';
        } else if (temp.contains('S')) {
          b1PoleSmall = 'NS';
        }
      } else if (moveTo == '5') {
        if (temp.contains('L')) {
          b2PoleLarge = 'NL';
        } else if (temp.contains('M')) {
          b2PoleMedium = 'NM';
        } else if (temp.contains('S')) {
          b2PoleSmall = 'NS';
        }
      } else if (moveTo == '6') {
        if (temp.contains('L')) {
          b3PoleLarge = 'NL';
        } else if (temp.contains('M')) {
          b3PoleMedium = 'NM';
        } else if (temp.contains('S')) {
          b3PoleSmall = 'NS';
        }
      } else if (moveTo == '7') {
        if (temp.contains('L')) {
          c1PoleLarge = 'NL';
        } else if (temp.contains('M')) {
          c1PoleMedium = 'NM';
        } else if (temp.contains('S')) {
          c1PoleSmall = 'NS';
        }
      } else if (moveTo == '8') {
        if (temp.contains('L')) {
          c2PoleLarge = 'NL';
        } else if (temp.contains('M')) {
          c2PoleMedium = 'NM';
        } else if (temp.contains('S')) {
          c2PoleSmall = 'NS';
        }
      } else if (moveTo == '9') {
        if (temp.contains('L')) {
          c3PoleLarge = 'NL';
        } else if (temp.contains('M')) {
          c3PoleMedium = 'NM';
        } else if (temp.contains('S')) {
          c3PoleSmall = 'NS';
        }
      } else {
        print('Nie możesz przesunąć na to miejsce');
      }
    }
    return null;
  }

  String? putBlue(String put, String sizeOf, String round) {
    if (put == '0') {
    } else if (put == '1' &&
        (!a1PoleSmall.startsWith(blue) ||
            !a1PoleMedium.startsWith(blue) ||
            !a1PoleLarge.startsWith(blue))) {
      if (sizeOf == 's') {
        a1PoleSmall = 'NS';
      } else if (sizeOf == 'm') {
        a1PoleMedium = 'NM';
      } else if (sizeOf == 'l') {
        a1PoleLarge = 'NL';
      }
      countBlue++;
    } else if (put == '2' &&
        (!a2PoleSmall.startsWith(blue) ||
            !a2PoleMedium.startsWith(blue) ||
            !a2PoleLarge.startsWith(blue))) {
      if (sizeOf == 's') {
        a2PoleSmall = 'NS';
      } else if (sizeOf == 'm') {
        a2PoleMedium = 'NM';
      } else if (sizeOf == 'l') {
        a2PoleLarge = 'NL';
      }
      countBlue++;
    } else if (put == '3' &&
        (!a3PoleSmall.startsWith(blue) ||
            !a3PoleMedium.startsWith(blue) ||
            !a3PoleLarge.startsWith(blue))) {
      if (sizeOf == 's') {
        a3PoleSmall = 'NS';
      } else if (sizeOf == 'm') {
        a3PoleMedium = 'NM';
      } else if (sizeOf == 'l') {
        a3PoleLarge = 'NL';
      }
      countBlue++;
    } else if (put == '4' &&
        (!b1PoleSmall.startsWith(blue) ||
            !b1PoleMedium.startsWith(blue) ||
            !b1PoleLarge.startsWith(blue))) {
      if (sizeOf == 's') {
        b1PoleSmall = 'NS';
      } else if (sizeOf == 'm') {
        b1PoleMedium = 'NM';
      } else if (sizeOf == 'l') {
        b1PoleLarge = 'NL';
      }
      countBlue++;
    } else if (put == '5' &&
        (!b2PoleSmall.startsWith(blue) ||
            !b2PoleMedium.startsWith(blue) ||
            !b2PoleLarge.startsWith(blue))) {
      if (sizeOf == 's') {
        b2PoleSmall = 'NS';
      } else if (sizeOf == 'm') {
        b2PoleMedium = 'NM';
      } else if (sizeOf == 'l') {
        b2PoleLarge = 'NL';
      }
      countBlue++;
    } else if (put == '6' &&
        (!b3PoleSmall.startsWith(blue) ||
            !b3PoleMedium.startsWith(blue) ||
            !b3PoleLarge.startsWith(blue))) {
      if (sizeOf == 's') {
        b3PoleSmall = 'NS';
      } else if (sizeOf == 'm') {
        b3PoleMedium = 'NM';
      } else if (sizeOf == 'l') {
        b3PoleLarge = 'NL';
      }
      countBlue++;
    } else if (put == '7' &&
        (!c1PoleSmall.startsWith(blue) ||
            !c1PoleMedium.startsWith(blue) ||
            !c1PoleLarge.startsWith(blue))) {
      if (sizeOf == 's') {
        c1PoleSmall = 'NS';
      } else if (sizeOf == 'm') {
        c1PoleMedium = 'NM';
      } else if (sizeOf == 'l') {
        c1PoleLarge = 'NL';
      }
      countBlue++;
    } else if (put == '8' &&
        (!c2PoleSmall.startsWith(blue) ||
            !c2PoleMedium.startsWith(blue) ||
            !c2PoleLarge.startsWith(blue))) {
      if (sizeOf == 's') {
        c2PoleSmall = 'NS';
      } else if (sizeOf == 'm') {
        c2PoleMedium = 'NM';
      } else if (sizeOf == 'l') {
        c2PoleLarge = 'NL';
      }
      countBlue++;
    } else if (put == '9' &&
        (!c3PoleSmall.startsWith(blue) ||
            !c3PoleMedium.startsWith(blue) ||
            !c3PoleLarge.startsWith(blue))) {
      if (sizeOf == 's') {
        c3PoleSmall = 'NS';
      } else if (sizeOf == 'm') {
        c3PoleMedium = 'NM';
      } else if (sizeOf == 'l') {
        c3PoleLarge = 'NL';
      }
      countBlue++;
    }
    return null;
  }

  String? moveOrangeGoblet(String moveFrom, String moveTo, String round) {
    if (round == 'P') {
      if (moveFrom == '1') {
        if (a1PoleLarge == 'PL') {
          temp = 'PL';
          a1PoleLarge = '';
        } else if (a1PoleMedium == 'PM') {
          temp = 'PM';
          a1PoleMedium = '';
        } else if (a1PoleSmall == 'PS') {
          temp = 'PS';
          a1PoleSmall = '';
        }
      } else if (moveFrom == '2') {
        if (a2PoleLarge == 'PL') {
          temp = 'PL';
          a2PoleLarge = '';
        } else if (a2PoleMedium == 'PM') {
          temp = 'PM';
          a2PoleMedium = '';
        } else if (a2PoleSmall == 'PS') {
          temp = 'PS';
          a2PoleMedium = '';
        }
      } else if (moveFrom == '3') {
        if (a3PoleLarge == 'PL') {
          temp = 'PL';
          a3PoleLarge = '';
        } else if (a3PoleMedium == 'PM') {
          temp = 'PM';
          a3PoleMedium = '';
        } else if (a3PoleSmall == 'PS') {
          temp = 'PS';
          a3PoleSmall = '';
        }
      } else if (moveFrom == '4') {
        if (b1PoleLarge == 'PL') {
          temp = 'PL';
          b1PoleLarge = '';
        } else if (a3PoleMedium == 'PM') {
          temp = 'PM';
          b1PoleMedium = '';
        } else if (a3PoleSmall == 'PS') {
          temp = 'PS';
          b1PoleSmall = '';
        }
      } else if (moveFrom == '5') {
        if (a3PoleLarge == 'PL') {
          temp = 'PL';
          b2PoleLarge = '';
        } else if (a3PoleMedium == 'PM') {
          temp = 'PM';
          b2PoleMedium = '';
        } else if (a3PoleSmall == 'NS') {
          temp = 'PS';
          b2PoleSmall = '';
        }
      } else if (moveFrom == '6') {
        if (a3PoleLarge == 'PL') {
          temp = 'PL';
          b3PoleLarge = '';
        } else if (a3PoleMedium == 'PM') {
          temp = 'PM';
          b3PoleMedium = '';
        } else if (a3PoleSmall == 'PS') {
          temp = 'NS';
          b3PoleSmall = '';
        }
      } else if (moveFrom == '7') {
        if (a3PoleLarge == 'PL') {
          temp = 'ND';
          c1PoleLarge = '';
        } else if (a3PoleMedium == 'PM') {
          temp = 'PM';
          c1PoleMedium = '';
        } else if (a3PoleSmall == 'PS') {
          temp = 'PS';
          c1PoleSmall = '';
        }
      } else if (moveFrom == '8') {
        if (c2PoleLarge == 'PL') {
          temp = 'PL';
          c2PoleLarge = '';
        } else if (a3PoleMedium == 'PM') {
          temp = 'PM';
          c2PoleMedium = '';
        } else if (a3PoleSmall == 'PS') {
          temp = 'PS';
          c2PoleSmall = '';
        }
      } else if (moveFrom == '9') {
        if (a3PoleLarge == 'PL') {
          temp = 'PL';
          c3PoleLarge = '';
        } else if (a3PoleMedium == 'PM') {
          temp = 'PM';
          c3PoleMedium = '';
        } else if (a3PoleSmall == 'PS') {
          temp = 'PS';
          c3PoleSmall = '';
        }
      } else {
        print('Nie możesz przesunąć z tego miejsca');
      }
    }

    return null;
  }

  String? putOrange(String put, String sizeOf) {
    if (put == '0') {
    } else if (put == '1' &&
        (!a1PoleSmall.startsWith(orange) ||
            !a1PoleMedium.startsWith(orange) ||
            !a1PoleLarge.startsWith(orange))) {
      if (sizeOf == 's') {
        a1PoleSmall = 'PS';
      } else if (sizeOf == 'm') {
        a1PoleMedium = 'PM';
      } else if (sizeOf == 'l') {
        a1PoleLarge = 'PL';
      }
      countOrange++;
    } else if (put == '2' &&
        (!a2PoleSmall.startsWith(orange) ||
            !a2PoleMedium.startsWith(orange) ||
            !a2PoleLarge.startsWith(orange))) {
      if (sizeOf == 's') {
        a2PoleSmall = 'PS';
      } else if (sizeOf == 'm') {
        a2PoleMedium = 'PM';
      } else if (sizeOf == 'l') {
        a2PoleLarge = 'PL';
      }
      countOrange++;
    } else if (put == '3' &&
        (!a3PoleSmall.startsWith(orange) ||
            !a3PoleMedium.startsWith(orange) ||
            !a3PoleLarge.startsWith(orange))) {
      if (sizeOf == 's') {
        a3PoleSmall = 'PS';
      } else if (sizeOf == 'm') {
        a3PoleMedium = 'PM';
      } else if (sizeOf == 'l') {
        a3PoleLarge = 'PL';
      }
      countOrange++;
    } else if (put == '4' &&
        (!b1PoleSmall.startsWith(orange) ||
            !b1PoleMedium.startsWith(orange) ||
            !b1PoleLarge.startsWith(orange))) {
      if (sizeOf == 's') {
        b1PoleSmall = 'PS';
      } else if (sizeOf == 'm') {
        b1PoleMedium = 'PM';
      } else if (sizeOf == 'l') {
        b1PoleLarge = 'PL';
      }
      countOrange++;
    } else if (put == '5' &&
        (!b2PoleSmall.startsWith(orange) ||
            !b2PoleMedium.startsWith(orange) ||
            !b2PoleLarge.startsWith(orange))) {
      if (sizeOf == 's') {
        b2PoleSmall = 'PS';
      } else if (sizeOf == 'm') {
        b2PoleMedium = 'PM';
      } else if (sizeOf == 'l') {
        b2PoleLarge = 'PL';
      }
      countOrange++;
    } else if (put == '6' &&
        (!b3PoleSmall.startsWith(orange) ||
            !b3PoleMedium.startsWith(orange) ||
            !b3PoleLarge.startsWith(orange))) {
      if (sizeOf == 's') {
        b3PoleSmall = 'PS';
      } else if (sizeOf == 'm') {
        b3PoleMedium = 'PM';
      } else if (sizeOf == 'l') {
        b3PoleLarge = 'PL';
      }
      countOrange++;
    } else if (put == '7' &&
        (!c1PoleSmall.startsWith(orange) ||
            !c1PoleMedium.startsWith(orange) ||
            !c1PoleLarge.startsWith(orange))) {
      if (sizeOf == 's') {
        c1PoleSmall = 'PS';
      } else if (sizeOf == 'm') {
        c1PoleMedium = 'PM';
      } else if (sizeOf == 'l') {
        c1PoleLarge = 'PL';
      }
      countOrange++;
    } else if (put == '8' &&
        (!c2PoleSmall.startsWith(orange) ||
            !c2PoleMedium.startsWith(orange) ||
            !c2PoleLarge.startsWith(orange))) {
      if (sizeOf == 's') {
        c2PoleSmall = 'PS';
      } else if (sizeOf == 'm') {
        c2PoleMedium = 'PM';
      } else if (sizeOf == 'l') {
        c2PoleLarge = 'PL';
      }
      countOrange++;
    } else if (put == '9' &&
        (!c3PoleSmall.startsWith(orange) ||
            !c3PoleMedium.startsWith(orange) ||
            !c3PoleLarge.startsWith(orange))) {
      if (sizeOf == 's') {
        c3PoleSmall = 'PS';
      } else if (sizeOf == 'm') {
        c3PoleMedium = 'PM';
      } else if (sizeOf == 'l') {
        c3PoleLarge = 'PL';
      }
      countOrange++;
    }
    return null;
  }
}
