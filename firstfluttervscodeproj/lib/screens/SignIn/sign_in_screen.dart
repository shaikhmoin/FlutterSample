// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:firstfluttervscodeproj/screens/signIn/components/body.dart';
import 'package:flutter/material.dart';

//StatefulWidget we can change data (Like API and etc)
class SignInScreen extends StatefulWidget {
  static String routeName = "/sign_in";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

@override
  void initState() {
    FocusManager.instance.primaryFocus?.hasFocus;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        leading: InkWell(onTap:(){
            FocusManager.instance.primaryFocus?.unfocus();
            Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back)),
      ),
      body: BodyLogin(),
    );
  }
}
