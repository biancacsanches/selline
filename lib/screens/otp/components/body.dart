import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'otp_form.dart';

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
                "Verificação de conta",
                style: headingStyle,
              ),
              Text(
                "Enviamos seu código para 145514788445",
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Reenviar código",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Esse código expira em "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
