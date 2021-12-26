import 'package:flutter/material.dart';

class ConstantsText extends StatelessWidget {
  String? text;
  Color? color;
  double? size;
  ConstantsText({
    Key? key,
    required this.text,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
