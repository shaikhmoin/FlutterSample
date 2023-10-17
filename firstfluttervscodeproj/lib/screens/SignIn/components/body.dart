// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

//OR
// import 'package:firstfluttervscodeproj/size_config.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
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
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
             SignForm(),
              // Container(
              //   padding: EdgeInsets.all(getProportionateScreenWidth(12)),
              //   height: getProportionateScreenHeight(40),
              //   width: getProportionateScreenWidth(40),
              //   decoration: BoxDecoration ( 
              //     color: Colors.white,
              //     shape: BoxShape.circle,
              //   ),
              //  // child: SvgPicture.asset("asset/icons/facebook-2.svg"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

