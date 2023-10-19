import 'package:firstfluttervscodeproj/constants.dart';
import 'package:firstfluttervscodeproj/screens/signup/signup_screen.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dont have an account? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            fontWeight: FontWeight.normal,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignupScreen.routeName),
          child: Text(
            //Wrap with widget for Text and then add GestureDetector
            "Sign Up?",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
