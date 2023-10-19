// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:firstfluttervscodeproj/screens/signup/components/body.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  static String routeName = "/sign_up";

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        leading: InkWell(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: BodySignup(),
    );
  }
}
