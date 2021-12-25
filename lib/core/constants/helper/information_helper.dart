import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [iconMethod(), informationMethod()],
    );
  }

  informationMethod() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: getProportionateScreenWidth(177.0)),
          child: ConstantsText(
            text: 'FRIDAY AUG 24, 9PM',
            color: ProjectColors().kPrimaryWhiteColor,
            size: getProportionateScreenWidth(12.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: getProportionateScreenWidth(42.0)),
          child: ConstantsText(
            text: 'Brightlight Music Festival',
            color: ProjectColors().kPrimaryWhiteColor,
            size: getProportionateScreenWidth(22.0),
          ),
        ),
        Container(
          child: Row(
            children: [
              SizedBox(width: getProportionateScreenWidth(16.0)),
              Row(
                children: [
                  SizedBox(
                    child: SvgPicture.asset(music),
                  ),
                  ConstantsText(
                    text: 'Indie Rock',
                    color: ProjectColors().kPrimarySubtitlesColor,
                    size: getProportionateScreenWidth(12.0),
                  )
                ],
              ),
              SizedBox(width: getProportionateScreenWidth(10.0)),
              Row(
                children: [
                  SizedBox(
                    child: ticked2,
                  ),
                  ConstantsText(
                    text: '\$40 - \$80',
                    color: ProjectColors().kPrimarySubtitlesColor,
                    size: getProportionateScreenWidth(12.0),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(17.0)),
      ],
    );
  }

  iconMethod() {
    return Container(
      margin: EdgeInsets.only(
        left: getProportionateScreenWidth(270.0),
        top: getProportionateScreenHeight(5.0),
      ),
      height: getProportionateScreenWidth(30.0),
      width: getProportionateScreenWidth(30.0),
      decoration: const BoxDecoration(
        color: Color(0xff5d5c8d),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        cancel,
      ),
    );
  }
}
