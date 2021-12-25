import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';
import 'package:my_beta_programm/core/widgets/sliver_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(
            title: 'Home',
            color: ProjectColors().kPrimaryTextColor,
            fontSize: getProportionateScreenWidth(18.0),
          ),
          const MySliverList(),
        ],
      ),
    );
  }
}
