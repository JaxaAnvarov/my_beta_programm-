import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/size_config.dart';

class ConstPaddigs {
  Padding kPrimaryRowPadding = Padding(
    padding: EdgeInsets.symmetric(
      horizontal: getProportionateScreenWidth(10.0),
      vertical: getProportionateScreenHeight(20.0),
    ),
  );
}
