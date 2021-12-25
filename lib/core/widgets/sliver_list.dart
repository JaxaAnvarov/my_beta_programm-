import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

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
                ConstantsContainer(
                  height: getProportionateScreenWidth(32.0),
                  width: getProportionateScreenWidth(32.0),
                  icon: filters,
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(260.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (
                BuildContext _,
                int __,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kPrimaryVerticalPadding,
                    vertical: kPrimaryVPadding,
                  ),
                  child: AwesomeContainer(
                    height: getProportionateScreenHeight(256.0),
                    width: getProportionateScreenWidth(327.0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
