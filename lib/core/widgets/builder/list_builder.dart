import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class ListViewBuilder extends StatelessWidget {
  Widget? child;
  ListViewBuilder({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (
        BuildContext _, // ! _ => context,
        int __, // ! __ => index,
      ) {
        return Padding(
          padding: DefaultPaddigs.symmetric(
              horizontal: getProportionateScreenWidth(16.0),
              vertical: getProportionateScreenWidth(10.0)),
          child: child,
        );
      },
    );
  }
}
