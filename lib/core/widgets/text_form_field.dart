import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({
    Key? key,
    this.controller,
  }) : super(key: key);
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TextFormFieldProvider>(
      create: (context) => TextFormFieldProvider(),
      child: Consumer<TextFormFieldProvider>(
        builder: (context, model, child) => Padding(
          padding: DefaultPaddigs.symmetric(
            horizontal: getProportionateScreenWidth(16.0),
            vertical: getProportionateScreenHeight(20.0),
          ),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: ProjectColors().kPrimaryWhiteColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(12.0),
                ),
              ),
              hintText: "Event name, artist, plase",
              hintStyle: TextStyle(
                color: ProjectColors().kPrimaryHingTextColor,
                fontSize: getProportionateScreenWidth(16.0),
              ),
              prefixIcon: IconButton(
                icon: search2,
                onPressed: () {
                  debugPrint('hello');
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
