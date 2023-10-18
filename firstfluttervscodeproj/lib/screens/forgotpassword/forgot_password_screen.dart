// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/screens/forgotpassword/components/body.dart';
import 'package:firstfluttervscodeproj/screens/splash/components/body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  static String routeName = "/forgot_password";

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Forgot Password"),
        leading: InkWell(onTap:(){
            FocusManager.instance.primaryFocus?.unfocus();
            Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back)),
      ),
      body: BodyForgotPassword(),
    );
  }
}