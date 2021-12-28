import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class TickedPage extends StatelessWidget {
  const TickedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: getProportionateScreenHeight(552.0),
              width: double.infinity,
              decoration: CDecoration().boxDecoration(
                  radius: getProportionateScreenWidth(0.0),
                  imageUrl: Images.bgFon,
                  color: ProjectColors().kPrimaryWhiteColor),
            ),
            ConstantsText(
              color: ProjectColors().kPrimaryTextColor,
              text: 'No tickets bought',
              size: getProportionateScreenWidth(28.0),
            ),
            ConstantsText(
              color: ProjectColors().kPrimatySecondaryTextColor,
              size: getProportionateScreenWidth(15.0),
              text:
                  "It appears you haven't bought any tickets yet.\nMaybe try searching these?",
            ),
          ],
        ),
      ),
    );
  }
}
