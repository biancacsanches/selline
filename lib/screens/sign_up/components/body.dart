import 'package:flutter/material.dart';
import 'package:selline/components/social_card.dart';
import 'package:selline/screens/sign_up/components/sign_up_form.dart';
import 'package:selline/size_config.dart';
import 'package:selline/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "Faça Parte!",
                style: headingStyle,
              ),
              Text(
                "Complete seus dados \n ou ocntinue com suas mídias sociais.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ), //8% of total height
              SignUpForm(),
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
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text(
                "Continuando você confirma que concorda \n com nossos termos e condições.",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
