import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class MySliverAppBar extends StatelessWidget with PreferredSizeWidget {
  String? title;
  Color? color;
  double fontSize;

  MySliverAppBar({
    Key? key,
    required this.title,
    required this.color,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SliverAppBar(
      backgroundColor: ProjectColors().kPrimaryWhiteColor,
      elevation: 50.0,
      title: Text(
        title!,
        style: TextStyle(
          color: color,
          fontFamily: "WorkSans",
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize {
    return Size(
      double.infinity, // ! width,
      getProportionateScreenHeight(61.0), // ! height
    );
  }
}
