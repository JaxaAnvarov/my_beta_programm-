import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';
import 'package:my_beta_programm/core/constants/helper/information_helper.dart';

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
          SizedBox(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: getProportionateScreenHeight(65.0),
                      width: getProportionateScreenWidth(50.0),
                      decoration: CDecoration().boxDecoration(
                        color: ProjectColors().kPrimaryWhiteColor,
                        radius: getProportionateScreenWidth(14.0),
                        imageUrl: '',
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ConstantsText(
                            text: '12',
                            color: ProjectColors().kPrimaryTextColor,
                            size: getProportionateScreenWidth(20.0),
                          ),
                          ConstantsText(
                            text: 'THU',
                            color: const Color(0xffc1c1c1),
                            size: getProportionateScreenWidth(10.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getProportionateScreenHeight(65.0),
                      width: getProportionateScreenWidth(50.0),
                      decoration: CDecoration().boxDecoration(
                        color: ProjectColors().kPrimaryWhiteColor,
                        radius: getProportionateScreenWidth(14.0),
                        imageUrl: '',
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ConstantsText(
                            text: '12',
                            color: ProjectColors().kPrimaryTextColor,
                            size: getProportionateScreenWidth(20.0),
                          ),
                          ConstantsText(
                            text: 'THU',
                            color: const Color(0xffc1c1c1),
                            size: getProportionateScreenWidth(10.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                AwesomeContainer(
                  height: getProportionateScreenHeight(172.0),
                  width: getProportionateScreenWidth(290.0),
                  image: Images.bgImage,
                  radius: getProportionateScreenWidth(20.0),
                  color: ProjectColors().kPrimaryBlackColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: getProportionateScreenWidth(65.0)),
                        child: ConstantsText(
                          text: 'Brighting Music Festival',
                          color: ProjectColors().kPrimaryWhiteColor,
                          size: getProportionateScreenWidth(18.0),
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
                    ],
                  ),
                ),
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
                      color: ConstColors.colors[__],
                      text: Mock.text_mock[__].toString(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  secondListMethod() {
    return SizedBox(
      height: getProportionateScreenHeight(180.0),
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (
          BuildContext _,
          int __,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPrimaryHorizontalPadding,
              vertical: kPrimaryVerticalPadding,
            ),
            child: AwesomeContainer(
              height: getProportionateScreenHeight(165.0),
              width: getProportionateScreenWidth(320.0),
              image: Images.bgImage,
              radius: getProportionateScreenWidth(20.0),
            ),
          );
        },
      ),
    );
  }

  firstListMethod() {
    return SizedBox(
      height: getProportionateScreenHeight(280.0),
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
              image: Images.bgImage,
              radius: getProportionateScreenWidth(20.0),
              child: const Information(),
            ),
          );
        },
      ),
    );
  }
}
