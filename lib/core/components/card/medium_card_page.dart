import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class MediumCard extends StatelessWidget {
  Widget? child;
  MediumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getProportionateScreenHeight(256.0),
      width: getProportionateScreenWidth(327.0),
      decoration: CDecoration().boxDecoration(
        radius: getProportionateScreenWidth(20.0),
        color: ProjectColors().kPrimaryWhiteColor,
        imageUrl: Images.bgImage,
      ),
      child: child,
    );
  }
}
