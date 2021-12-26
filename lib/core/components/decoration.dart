import 'package:flutter/material.dart';

class CDecoration extends Object {
  BoxDecoration boxDecoration({
    double? radius,
    String? imageUrl,
    Color? color,
  }) {
    return BoxDecoration(
      color: color,
      image: DecorationImage(
        image: AssetImage(
          imageUrl!,
        ),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(
        radius!,
      ),
    );
  }
}
