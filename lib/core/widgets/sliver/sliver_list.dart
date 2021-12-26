import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/container/const_containers.dart';
import 'package:my_beta_programm/core/constants/export.dart';
import 'package:my_beta_programm/core/model/mock/list_test_mock.dart';

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
          SizedBox(
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
                  ),
                );
              },
            ),
          ),
          ConstContainers().constContainer(
            text: 'Collection',
          ),
          SizedBox(
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
                  ),
                );
              },
            ),
          ),
          ConstContainers().constContainer(
            text: 'Discover',
          ),
          SizedBox(
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
          ),
        ],
      ),
    );
  }
}
