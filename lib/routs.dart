import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:selline/screens/complete_profile/complete__profile_screen.dart';
import 'package:selline/screens/forgot_password/forgot_password_screen.dart';
import 'package:selline/screens/otp/otp_screen.dart';
import 'package:selline/screens/sign_in/sign_in_screen.dart';
import 'package:selline/screens/sign_up/sign_up_screen.dart';
import 'package:selline/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
};
