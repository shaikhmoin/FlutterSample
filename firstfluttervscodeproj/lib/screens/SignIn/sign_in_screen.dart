// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/screens/SignIn/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: BodyLogin(),
    );
  }
}
