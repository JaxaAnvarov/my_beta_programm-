import 'package:flutter/material.dart';

class BottomProvier extends ChangeNotifier {
  int currentIndex = 0;

  onTap(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
