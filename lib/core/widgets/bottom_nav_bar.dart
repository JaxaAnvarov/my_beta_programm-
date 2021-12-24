import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomProvier>();
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: _context.currentIndex == 1 ? home1 : home2,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentIndex == 1 ? search1 : search2,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentIndex == 1 ? ticked1 : ticked2,
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentIndex == 1 ? person1 : person2,
          label: '',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _context.currentIndex,
      onTap: context.read<BottomProvier>().onTap(_context.currentIndex),
    );
  }
}
