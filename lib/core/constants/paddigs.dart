import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class DefaultPaddigs {
  static symmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(horizontal),
        vertical: getProportionateScreenHeight(vertical),
      );
}
