import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar(
        color: ProjectColors().kPrimaryWhiteColor,
        title: 'Home',
        fontSize: getProportionateScreenWidth(18.0),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'For you',
                      style: TextStyle(
                        color: ProjectColors().kPrimaryTextColor,
                        fontWeight: FontWeight.w700,
                        fontSize: getProportionateScreenWidth(28.0),
                      ),
                    ),
                    Container(
                      height: getProportionateScreenWidth(32.0),
                      width: getProportionateScreenWidth(32.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/filter.svg',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
