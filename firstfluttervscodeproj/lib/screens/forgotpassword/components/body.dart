// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/components/default_button.dart';
import 'package:firstfluttervscodeproj/components/no_account_text.dart';
import 'package:firstfluttervscodeproj/screens/forgotpassword/components/forgot_password_form.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

class BodyForgotPassword extends StatefulWidget {
  const BodyForgotPassword({super.key});

  @override
  State<BodyForgotPassword> createState() => _BodyForgotPasswordState();
}

class _BodyForgotPasswordState extends State<BodyForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)), //Main left-right padding
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
      
              ForgotPasswordForm(),
      
              SizedBox(height: SizeConfig.screenHeight * 0.1),
      
              DefaultButton(
                text: "Continue",
                // press: () => Navigator.pushNamed(context, SignInScreen.routeName),
              ),
              // SizedBox(height: getProportionateScreenHeight(50)),

              SizedBox(height: SizeConfig.screenHeight * 0.01),
              
              NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}