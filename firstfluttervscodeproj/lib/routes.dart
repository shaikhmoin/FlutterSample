// ignore_for_file: prefer_const_constructors

import 'package:firstfluttervscodeproj/screens/completeprofile/complete_profile_screen.dart';
import 'package:firstfluttervscodeproj/screens/forgotpassword/forgot_password_screen.dart';
import 'package:firstfluttervscodeproj/screens/loginsuccess/login_success_screen.dart';
import 'package:firstfluttervscodeproj/screens/otp/otp_screen.dart';
import 'package:firstfluttervscodeproj/screens/signIn/sign_in_screen.dart';
import 'package:firstfluttervscodeproj/screens/signup/signup_screen.dart';
import 'package:firstfluttervscodeproj/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
};