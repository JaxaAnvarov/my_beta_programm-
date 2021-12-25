import 'package:flutter/material.dart';

class CDecoration extends Object {
  BoxDecoration boxDecoration(Color color, double radius) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(
        radius,
      ),
    );
  }
}
