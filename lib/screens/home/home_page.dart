import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(
            color: kPrimaryBlackColor,
            fontSize: getProportionateScreenWidth(18.0),
            fontWeight: FontWeight.w700,
            fontFamily: 'WorkSans',
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            color: kPrimaryBlackColor,
            fontSize: getProportionateScreenWidth(30.0),
          ),
        ),
      ),
    );
  }
}
