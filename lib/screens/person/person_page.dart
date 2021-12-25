import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Text(
          'Person Page',
          style: TextStyle(
            color: ProjectColors().kPrimaryBlackColor,
            fontSize: getProportionateScreenWidth(30.0),
          ),
        ),
      ),
    );
  }
}
