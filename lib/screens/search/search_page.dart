import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ChangeNotifierProvider<TextFormFieldProvider>(
      create: (context) => TextFormFieldProvider(),
      child: Consumer<TextFormFieldProvider>(
        builder: (context, model, child) => Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: CDecoration().boxDecoration(
              imageUrl: 'assets/images/map.png',
              color: ProjectColors().kPrimaryWhiteColor,
              radius: getProportionateScreenWidth(0.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(150.0),
                  child: MyTextFormField(
                    controller:
                        context.watch<TextFormFieldProvider>().searchController,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // builder: (context) => BottomProvier(),
    );
  }
}
