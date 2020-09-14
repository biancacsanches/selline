import 'package:flutter/material.dart';
import 'package:selline/constants.dart';
import 'package:selline/routs.dart';
import 'package:selline/screens/splash/splash_screen.dart';
import 'package:selline/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
