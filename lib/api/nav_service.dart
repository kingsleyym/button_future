import 'package:flutter/material.dart';

class NavService extends ChangeNotifier {
  bool navon = true;

  void toogleNavOn() {
    navon = !navon;
    notifyListeners();
  }
}
