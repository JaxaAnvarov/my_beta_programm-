import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class TickedPage extends StatelessWidget {
  const TickedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Text(
          "Ticked Page",
          style: TextStyle(
            color: ProjectColors().kPrimaryBlackColor,
            fontSize: getProportionateScreenWidth(30.0),
          ),
        ),
      ),
    );
  }
}
