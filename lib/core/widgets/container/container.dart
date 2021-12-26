import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';
import 'package:my_beta_programm/core/constants/helper/information_helper.dart';

class AwesomeContainer extends StatelessWidget {
  double? width;
  double? height;
  String? image;
  double? radius;
  Color? color;
  Widget? child;
  AwesomeContainer({
    Key? key,
    required this.height,
    required this.width,
    this.image,
    this.radius,
    this.color,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: height,
      width: width,
      child: child,
      decoration: CDecoration().boxDecoration(
        imageUrl: image,
        radius: radius,
        color: color
      ),
    );
  }
}
