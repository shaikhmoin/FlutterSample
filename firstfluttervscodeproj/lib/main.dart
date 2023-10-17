// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/constants.dart';
import 'package:firstfluttervscodeproj/routes.dart';
import 'package:firstfluttervscodeproj/screens/splash/splash_screen.dart';
import 'package:firstfluttervscodeproj/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //  home: SplashScreen(), OR
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

