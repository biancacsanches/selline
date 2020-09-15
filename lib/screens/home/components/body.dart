import 'package:flutter/material.dart';
import 'package:selline/constants.dart';
import 'package:selline/screens/home/components/search_field.dart';
import 'package:selline/size_config.dart';

import 'discount_banner.dart';
import 'home_header.dart';
import 'icon_btn_with_counter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            DiscountBanner(),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": Icons.house, "text": "Casa"},
      {"icon": Icons.house, "text": "Casa"}
    ];
    return SizedBox(
      width: getProportionateScreenWidth(55),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(color: kPrimaryColor.withOpacity(0.1)),
        ),
      ),
    );
  }
}

                                                                   