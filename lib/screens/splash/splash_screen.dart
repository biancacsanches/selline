import 'package:flutter/material.dart';
import 'package:selline/screens/splash/components/body.dart';
import 'package:selline/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
