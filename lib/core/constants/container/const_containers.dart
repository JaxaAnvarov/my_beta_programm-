import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class ConstContainers extends Object {
  Container constContainer({String? text}) {
    return Container(
      margin: DefaultPaddigs.symmetric(
          horizontal: getProportionateScreenWidth(16.0),
          vertical: getProportionateScreenWidth(10.0)),
      child: ConstantsText(
        text: text,
        color: ProjectColors().kPrimaryTextColor,
        size: getProportionateScreenWidth(28.0),
      ),
    );
  }
}
