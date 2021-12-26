import 'package:flutter/material.dart';

import 'package:my_beta_programm/core/constants/export.dart';

class ListViewBuilder extends StatelessWidget {
  Widget? child;
  ListViewBuilder({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (
        BuildContext _, // ! _ => context,
        int __, // ! __ => index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kPrimaryHorizontalPadding,
            vertical: kPrimaryVerticalPadding,
          ),
          child: child,
        );
      },
    );
  }
}
