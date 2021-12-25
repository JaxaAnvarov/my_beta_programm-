import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class BottomNavBar extends StatelessWidget {
  BottomProvier? model;
  BottomNavBar({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomProvier>();
    // BottomProvier? model;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: _context.currentTab == 0 ? home1 : home2,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 1 ? search1 : search2,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 2 ? ticked1 : ticked2,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 3 ? person1 : person2,
          label: '',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _context.currentTab,
      onTap: (int idx) {
        model!.currentTab = idx;
      },
    );
  }
}
