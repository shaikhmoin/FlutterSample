import 'package:flutter/material.dart';
import '../../../size_config.dart';

//OR
// import 'package:firstfluttervscodeproj/size_config.dart';

class BodyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Welcome back",
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Sign in with your Email and Password \nor continue with social media",
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(18),
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
