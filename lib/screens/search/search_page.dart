import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: ConstantsText(
          size: getProportionateScreenWidth(30.0),
          text: 'Seach Page',
          color: ProjectColors().kPrimaryBlackColor,
        ),
      ),
    );
  }
}
