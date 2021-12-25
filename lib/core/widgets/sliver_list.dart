import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/components/constants_text.dart';
import 'package:my_beta_programm/core/constants/export.dart';
import 'package:my_beta_programm/core/constants/paddigs.dart';

class MySliverList extends StatelessWidget {
  const MySliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPrimaryHorizontalPadding,
              vertical: kPrimaryVerticalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstantsText(
                  text: "For you",
                  color: ProjectColors().kPrimaryTextColor,
                  size: getProportionateScreenWidth(28.0),
                ),
                Text("Hayr"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
