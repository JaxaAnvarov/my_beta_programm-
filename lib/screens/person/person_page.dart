import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors().kPrimaryWhiteColor,
        elevation: 0,
        title: ConstantsText(
          color: ProjectColors().kPrimaryTextColor,
          size: getProportionateScreenWidth(18.0),
          text: 'Profile',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16.0),
              vertical: getProportionateScreenHeight(10.0),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    getProportionateScreenWidth(10.0),
                  ),
                ),
                hintText: 'Enter Your Name...',
                labelText: 'Name',
                prefixIcon: IconButton(
                  icon: Icon(
                    CupertinoIcons.person,
                    color: ProjectColors().kPrimaryBlackColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(10.0),
                        ),
                      ),
                      hintText: 'Enter Your Email...',
                      labelText: 'Email',
                      prefixIcon: IconButton(
                        icon: Icon(
                          Icons.email_outlined,
                          color: ProjectColors().kPrimaryBlackColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(10.0)),
                Expanded(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(10.0),
                        ),
                      ),
                      hintText: 'Enter Your Password...',
                      labelText: 'Password',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.lock,
                          color: ProjectColors().kPrimaryBlackColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
