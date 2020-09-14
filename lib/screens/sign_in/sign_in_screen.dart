import 'package:flutter/material.dart';
import 'package:selline/screens/sign_in/components/body.dart';

import '../../size_config.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("Faça Login"),
        ),
        body: Body());
  }
}
