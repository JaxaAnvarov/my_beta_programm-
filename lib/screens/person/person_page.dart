import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors().kPrimaryWhiteColor,
        elevation: 0,
        title: ConstantsText(
          color: ProjectColors().kPrimaryTextColor,
          size: getProportionateScreenWidth(16.0),
          text: 'Profile',
        ),
        centerTitle: true,
      ),
    );
  }
}
