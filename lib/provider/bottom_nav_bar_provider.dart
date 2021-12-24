import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class BottomProvier extends ChangeNotifier {
  int _currentIndex = 0;
  List<Widget> _screens = [
    HomePage(),
    SearchPage(),
    TickedPage(),
    PersonPage(),
  ];

  set currentTab(int tab) {
    this._currentIndex = tab;
    notifyListeners();
  }
  int get currentTab => this._currentIndex;
  get currentScreens => this._screens[this._currentIndex];

  onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
