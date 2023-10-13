// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/screens/SignIn/sign_in_screen.dart';
import 'package:firstfluttervscodeproj/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
