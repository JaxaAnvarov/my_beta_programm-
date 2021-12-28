import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class ConstantsContainer extends StatelessWidget {
  ConstantsContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.icon,
  }) : super(key: key);
  double? height;
  double? width;
  String? icon;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: height,
      width: width,
      child: SvgPicture.asset(
        icon!,
        color: ProjectColors().kPrimaryRedColor,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
