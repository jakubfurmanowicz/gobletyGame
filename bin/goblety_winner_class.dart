class Winner1 {
  bool orangeWinner = false;
  bool blueWinner = false;
  String a1 = '';
  String a2 = '';
  String a3 = '';
  String b1 = '';
  String b2 = '';
  String b3 = '';
  String c1 = '';
  String c2 = '';
  String c3 = '';

  bool? winningCondition(
      String a1PoleSmall,
      String a1PoleMedium,
      String a1PoleLarge,
      String a2PoleSmall,
      String a2PoleMedium,
      String a2PoleLarge,
      String a3PoleSmall,
      String a3PoleMedium,
      String a3PoleLarge,
      String b1PoleSmall,
      String b1PoleMedium,
      String b1PoleLarge,
      String b2PoleSmall,
      String b2PoleMedium,
      String b2PoleLarge,
      String b3PoleSmall,
      String b3PoleMedium,
      String b3PoleLarge,
      String c1PoleSmall,
      String c1PoleMedium,
      String c1PoleLarge,
      String c2PoleSmall,
      String c2PoleMedium,
      String c2PoleLarge,
      String c3PoleSmall,
      String c3PoleMedium,
      String c3PoleLarge) {
    if (a1PoleLarge.contains('N')) {
      a1 = 'NL';
    } else if (a1PoleLarge.contains('P')) {
      a1 = 'PL';
    } else if (a1PoleMedium.contains('N')) {
      a1 = 'NM';
    } else if (a1PoleMedium.contains('P')) {
      a1 = 'PM';
    } else if (a1PoleSmall.contains('N')) {
      a1 = 'NS';
    } else if (a1PoleSmall.contains('P')) {
      a1 = 'PS';
    } else {
      a1 = '';
    }

    if (a2PoleLarge.contains('N')) {
      a2 = 'NL';
    } else if (a2PoleLarge.contains('P')) {
      a2 = 'PL';
    } else if (a2PoleMedium.contains('N')) {
      a2 = 'NM';
    } else if (a2PoleMedium.contains('P')) {
      a2 = 'PM';
    } else if (a2PoleSmall.contains('N')) {
      a2 = 'NS';
    } else if (a2PoleSmall.contains('P')) {
      a2 = 'PS';
    } else {
      a2 = '';
    }

    if (a3PoleLarge.contains('N')) {
      a3 = 'NL';
    } else if (a3PoleLarge.contains('P')) {
      a3 = 'PL';
    } else if (a3PoleMedium.contains('N')) {
      a3 = 'NM';
    } else if (a3PoleMedium.contains('P')) {
      a3 = 'PM';
    } else if (a3PoleSmall.contains('N')) {
      a3 = 'NS';
    } else if (a3PoleSmall.contains('P')) {
      a3 = 'PS';
    } else {
      a3 = '';
    }

    if (b1PoleLarge.contains('N')) {
      b1 = 'NL';
    } else if (b1PoleLarge.contains('P')) {
      b1 = 'PL';
    } else if (b1PoleMedium.contains('N')) {
      b1 = 'NM';
    } else if (b1PoleMedium.contains('P')) {
      b1 = 'PM';
    } else if (b1PoleSmall.contains('N')) {
      b1 = 'NS';
    } else if (b1PoleSmall.contains('P')) {
      b1 = 'PS';
    } else {
      b1 = '';
    }

    if (b2PoleLarge.contains('N')) {
      b2 = 'NL';
    } else if (b2PoleLarge.contains('P')) {
      b2 = 'PL';
    } else if (b2PoleMedium.contains('N')) {
      b2 = 'NM';
    } else if (b2PoleMedium.contains('P')) {
      b2 = 'PM';
    } else if (b2PoleSmall.contains('N')) {
      b2 = 'NS';
    } else if (b2PoleSmall.contains('P')) {
      b2 = 'PS';
    } else {
      b2 = '';
    }

    if (b3PoleLarge.contains('N')) {
      b3 = 'NL';
    } else if (b3PoleLarge.contains('P')) {
      b3 = 'PL';
    } else if (b3PoleMedium.contains('N')) {
      b3 = 'NM';
    } else if (b3PoleMedium.contains('P')) {
      b3 = 'PM';
    } else if (b3PoleSmall.contains('N')) {
      b3 = 'NS';
    } else if (b3PoleSmall.contains('P')) {
      b3 = 'PS';
    } else {
      b3 = '';
    }

    if (c1PoleLarge.contains('N')) {
      c1 = 'NL';
    } else if (c1PoleLarge.contains('P')) {
      c1 = 'PL';
    } else if (c1PoleMedium.contains('N')) {
      c1 = 'NM';
    } else if (c1PoleMedium.contains('P')) {
      c1 = 'PM';
    } else if (c1PoleSmall.contains('N')) {
      c1 = 'NS';
    } else if (c1PoleSmall.contains('P')) {
      c1 = 'PS';
    } else {
      c1 = '';
    }

    if (c2PoleLarge.contains('N')) {
      c2 = 'NL';
    } else if (c2PoleLarge.contains('P')) {
      c2 = 'PL';
    } else if (c2PoleMedium.contains('N')) {
      c2 = 'NM';
    } else if (c2PoleMedium.contains('P')) {
      c2 = 'PM';
    } else if (c2PoleSmall.contains('N')) {
      c2 = 'NS';
    } else if (c2PoleSmall.contains('P')) {
      c2 = 'PM';
    } else {
      c2 = '';
    }

    if (c3PoleLarge.contains('N')) {
      c3 = 'NL';
    } else if (c3PoleLarge.contains('P')) {
      c3 = 'PL';
    } else if (c3PoleMedium.contains('N')) {
      c3 = 'NM';
    } else if (c3PoleMedium.contains('P')) {
      c3 = 'PM';
    } else if (c3PoleSmall.contains('N')) {
      c3 = 'NS';
    } else if (c3PoleSmall.contains('P')) {
      c3 = 'PS';
    } else {
      c3 = '';
    }

    if ((a1.contains('N') && a2.contains('N') && a3.contains('N')) ||
        (b1.contains('N') && b2.contains('N') && b3.contains('N')) ||
        (c1.contains('N') && c2.contains('N') && c3.contains('N')) ||
        (a1.contains('N') && b1.contains('N') && c1.contains('N')) ||
        (a2.contains('N') && b2.contains('N') && c2.contains('N')) ||
        (a3.contains('N') && b3.contains('N') && c3.contains('N')) ||
        (a1.contains('N') && b2.contains('N') && c3.contains('N')) ||
        (a3.contains('N') && b2.contains('N') && c3.contains('N'))) {
      blueWinner = true;
      return (blueWinner);
    } else if ((a1.contains('P') && a2.contains('P') && a3.contains('P')) ||
        (b1.contains('P') && b2.contains('P') && b3.contains('P')) ||
        (c1.contains('P') && c2.contains('P') && c3.contains('P')) ||
        (a1.contains('P') && b1.contains('P') && c1.contains('P')) ||
        (a2.contains('P') && b2.contains('P') && c2.contains('P')) ||
        (a3.contains('P') && b3.contains('P') && c3.contains('P')) ||
        (a1.contains('P') && b2.contains('P') && c3.contains('P')) ||
        (a3.contains('P') && b2.contains('P') && c3.contains('P'))) {
      orangeWinner = true;
      return (orangeWinner);
    }
    return null;
  }
}
