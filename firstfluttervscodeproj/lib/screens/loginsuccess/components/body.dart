// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/components/default_button.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';

class BodyLoginSuccess extends StatelessWidget {
  const BodyLoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center the content vertically
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          // Image.asset(
          //   "assets/images/success.png",
          //   height: SizeConfig.screenHeight * 0.4, //40%
          // ),
          AspectRatio(
            aspectRatio: 14 / 9, // You can adjust the aspect ratio as needed
            child: Image.asset(
              "assets/images/success.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: () {
                //Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
