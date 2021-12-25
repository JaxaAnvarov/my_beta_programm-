import 'package:flutter/material.dart';

class CDecoration extends Object {
  BoxDecoration boxDecoration({
    double? radius,
    String? imageUrl,
  }) {
    return BoxDecoration(
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
