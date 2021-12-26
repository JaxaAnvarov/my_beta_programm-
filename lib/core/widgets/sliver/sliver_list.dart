import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';
import 'package:my_beta_programm/core/constants/helper/information_helper.dart';
import 'package:my_beta_programm/core/widgets/builder/list_builder.dart';

class MySliverList extends StatelessWidget {
  const MySliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPadding,
              vertical: kPrimaryVerticalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstContainers().constContainer(
                  text: 'For you',
                ),
                ConstantsContainer(
                  height: getProportionateScreenWidth(32.0),
                  width: getProportionateScreenWidth(32.0),
                  icon: filters,
                )
              ],
            ),
          ),
          firstListMethod(),
          ConstContainers().constContainer(
            text: 'Collection',
          ),
          secondListMethod(),
          ConstContainers().constContainer(
            text: 'Discover',
          ),
          thirdListMethod(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPadding,
              vertical: kPrimaryVerticalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstContainers().constContainer(
                  text: 'Upcoming',
                ),
                ConstantsContainer(
                  height: getProportionateScreenWidth(32.0),
                  width: getProportionateScreenWidth(32.0),
                  icon: right,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  thirdListMethod() {
    return SizedBox(
      height: getProportionateScreenHeight(60.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (
          BuildContext _,
          int __,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPrimaryHorizontalPadding,
            ),
            child: AwesomeContainer(
              height: getProportionateScreenHeight(256.0),
              width: getProportionateScreenWidth(327.0),
              image: Images.bgImage,
              radius: getProportionateScreenWidth(20.0),
              child: const Information(),
            ),
          );
        },
      ),
    );
  }

  secondListMethod() {
    return SizedBox(
      height: getProportionateScreenHeight(180.0),
      child: ListViewBuilder(
        child: Container(
          height: getProportionateScreenHeight(56.0),
          width: getProportionateScreenWidth(145.0),
          decoration: BoxDecoration(
            color: ProjectColors().kPrimaryWhiteColor,
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(30.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPrimaryHorizontalPadding,
              vertical: kPrimaryVerticalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstantsContainer(
                  height: getProportionateScreenWidth(40.0),
                  width: getProportionateScreenWidth(40.0),
                  icon: mapPin,
                ),
                ConstantsText(
                  size: getProportionateScreenWidth(16.0),
                  color: ConstColors.colors[0],
                  text: Mock.text_mock[0].toString(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  firstListMethod() {
    return SizedBox(
      height: getProportionateScreenHeight(280.0),
      child: ListViewBuilder(
        child: AwesomeContainer(
          height: getProportionateScreenHeight(256.0),
          width: getProportionateScreenWidth(327.0),
          image: Images.bgImage,
          radius: getProportionateScreenWidth(20.0),
          child: const Information(),
        ),
      ),
    );
  }
}
