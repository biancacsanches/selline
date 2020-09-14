import 'package:flutter/material.dart';
import 'package:selline/components/no_account_text.dart';
import 'package:selline/components/social_card.dart';
import 'package:selline/screens/sign_in/components/sign_form.dart';
import 'package:selline/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              Text("Bem vinde de volta",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                "Faça login com seu email e senha \nou continue com uma rede social",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SignForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: null,
                    press: () {},
                  ),
                  SocialCard(
                    icon: null,
                    press: () {},
                  ),
                  SocialCard(
                    icon: null,
                    press: () {},
                  )
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              NoAccountText()
            ],
          ),
        ),
      ),
    );
  }
}
