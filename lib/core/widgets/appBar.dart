import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  String? title;
  Color? color;
  double fontSize;

  MyAppBar({
    Key? key,
    required this.title,
    required this.color,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      title: Text(
        title!,
        style: TextStyle(
          color: ProjectColors().kPrimaryTextColor,
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
    return const Size(
      double.infinity, // ! width,
      60.0, // ! height
    );
  }
}
