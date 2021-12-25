import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class AwesomeContainer extends StatelessWidget {
  double? width;
  double? height;
  AwesomeContainer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: height,
      width: width,
      decoration: CDecoration().boxDecoration(
        imageUrl: 'assets/images/ima.png',
        radius : getProportionateScreenWidth(
          20.0,
        ),
      ),
    );
  }
}
