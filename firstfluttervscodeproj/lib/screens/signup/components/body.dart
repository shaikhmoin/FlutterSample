// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/components/social_card.dart';
import 'package:firstfluttervscodeproj/constants.dart';
import 'package:firstfluttervscodeproj/screens/signup/components/signup_form.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';

class BodySignup extends StatefulWidget {
  const BodySignup({super.key});

  @override
  State<BodySignup> createState() => _BodySignupState();
}

class _BodySignupState extends State<BodySignup> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal:
                getProportionateScreenWidth(20)), //Main left-right padding
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Text(
              "Register Account",
              style: headingStyle,
            ),
            Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
            SignupForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
            //Social login UI
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
            // SizedBox(height: getProportionateScreenHeight(10)),
            Text(
              "By continuing your confirm that you agree \nwith our Term and Condition",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
