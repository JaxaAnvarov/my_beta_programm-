import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';
import 'package:my_beta_programm/core/model/mock/list_for_width.dart';

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
                color: ProjectColors().kPrimaryWhiteColor,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(102),
                      right: getProportionateScreenWidth(251.0),
                      left: getProportionateScreenWidth(16.0),
                    ),
                    width: getProportionateScreenWidth(120.0),
                    child: ConstantsText(
                      color: ProjectColors().kPrimaryWhiteColor,
                      size: getProportionateScreenWidth(28.0),
                      text: 'Popular',
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(25.0)),
                  SizedBox(
                    height: getProportionateScreenHeight(40.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (
                        BuildContext _,
                        int __,
                      ) {
                        return Padding(
                          padding: DefaultPaddigs.symmetric(
                            horizontal: getProportionateScreenHeight(16.0),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getProportionateScreenHeight(32.0),
                            width: getProportionateScreenWidth(
                              Defaults.width[__].toDouble(),
                            ),
                            decoration: CDecoration().boxDecoration(
                              color: ProjectColors()
                                  .kPrimaryWhiteColor
                                  .withOpacity(0.3),
                              radius: getProportionateScreenWidth(20.0),
                              imageUrl: 'https://source.unsplash.com/random',
                            ),
                            child: ConstantsText(
                              text: Defaults.text[__].toString(),
                              color: ProjectColors().kPrimaryWhiteColor,
                              size: getProportionateScreenWidth(14.0),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            ConstantsText(
              color: ProjectColors().kPrimaryTextColor,
              text: 'No tickets bought',
              size: getProportionateScreenWidth(28.0),
            ),
            SizedBox(height: getProportionateScreenHeight(17.0)),
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
