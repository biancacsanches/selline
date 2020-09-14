import 'package:flutter/material.dart';
import 'package:selline/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final RegExp emailValidatorRegExp =
    RegExp(r"^([a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+)$");
const String kEmailNullError = "Por favor informe seu email";
const String kInvalidEmailError = "Por favor informe um email valido";
const String kPassNullError = "Por favor informe sua senha";
const String kShortPassError = "Senha muito curta";
const String kMatchPassError = "A senha está incorreta";
const String kNameNullError = "Por favor informe seu nome";
const String kAdressNullError = "Por favor informe seu endereço";
const String kPhoneNullError = "Por favor informe seu telefone";
