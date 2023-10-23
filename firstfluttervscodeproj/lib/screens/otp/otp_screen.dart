// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:firstfluttervscodeproj/screens/otp/components/body.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
    static String routeName = "/OTP";

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
         leading: InkWell(onTap:(){
            FocusManager.instance.primaryFocus?.unfocus();
            Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back)),
      ),
      body: BodyOTP(),
    );
  }
}