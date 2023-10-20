// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:firstfluttervscodeproj/screens/loginsuccess/components/body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Login Success"),
        leading: InkWell(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: BodyLoginSuccess(),
    );
  }
}
