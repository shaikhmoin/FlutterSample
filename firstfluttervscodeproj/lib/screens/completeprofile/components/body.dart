// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/constants.dart';
import 'package:firstfluttervscodeproj/screens/completeprofile/components/complete_profile_form.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';

class BodyCompleteprofile extends StatefulWidget {
  const BodyCompleteprofile({super.key});

  @override
  State<BodyCompleteprofile> createState() => _BodyCompleteprofileState();
}

class _BodyCompleteprofileState extends State<BodyCompleteprofile> {
  @override
  Widget build(BuildContext context) {
       return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text("Complete Profile", style: headingStyle),
                Text(
                  "Complete your details or continue  \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                CompleteProfileForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "By continuing your confirm that you agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}