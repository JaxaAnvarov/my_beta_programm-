import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(161.0),
      width: getProportionateScreenWidth(319.0),
      decoration: CDecoration().boxDecoration(
        color: ProjectColors().kPrimaryWhiteColor,
        imageUrl: Images.bgImage,
        radius: getProportionateScreenWidth(20.0),
      ),
    );
  }
}
