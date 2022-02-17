import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

final landingProvider = ChangeNotifierProvider((_) => LandingNotifier());

class LandingNotifier extends ChangeNotifier {
  int selectedIndex = 0;
  DateTime? currentBackPressTime;

  setSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  implementDoubleTapExit() {
    if (selectedIndex == 0) {
      DateTime now = DateTime.now();
      if (currentBackPressTime == null ||
          now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
        currentBackPressTime = now;
        Fluttertoast.showToast(
          msg: "Press back again to exit",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
        return Future.value(false);
      }
      return Future.value(true);
    } else {
      setSelectedIndex(0);
      return false;
    }
  }
}
