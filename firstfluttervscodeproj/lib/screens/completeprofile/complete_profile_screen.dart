// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:firstfluttervscodeproj/screens/completeprofile/components/body.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
    static String routeName = "/complete_profile";

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
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
      body: BodyCompleteprofile(),
    );
  }
}