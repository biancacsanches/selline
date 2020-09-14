import 'package:flutter/cupertino.dart';
import 'package:selline/screens/sign_up/sign_up_screen.dart';
import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Ainda não tem uma conta? ",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Registre-se",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
