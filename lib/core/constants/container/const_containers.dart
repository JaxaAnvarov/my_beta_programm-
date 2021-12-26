import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class ConstContainers extends Object {
  Container constContainer({String? text}) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kPrimaryHorizontalPadding,
        vertical: kPrimaryVPadding,
      ),
      child: ConstantsText(
        text: text,
        color: ProjectColors().kPrimaryTextColor,
        size: getProportionateScreenWidth(28.0),
      ),
    );
  }
}
