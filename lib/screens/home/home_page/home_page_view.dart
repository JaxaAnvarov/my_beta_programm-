import 'package:flutter/material.dart';
import './home_page_view_model.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class HomePageView extends HomePageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Center(
      child: Text(
        'Home Page',
        style: TextStyle(
          color: mainColor,
        ),
      ),
    );
  }
}
