import 'package:firstfluttervscodeproj/screens/splash/components/body.dart';
import 'package:firstfluttervscodeproj/size_config.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatelessWidget {
  static String routeName = "splash";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //You have to call in your starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
