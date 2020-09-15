import 'package:flutter/material.dart';
import 'package:selline/screens/home/components/search_field.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            numOfItens: 0,
            press: () => {},
            icon: Icons.shopping_cart,
          ),
          IconBtnWithCounter(
            numOfItens: 5,
            press: () => {},
            icon: Icons.notifications,
          ),
        ],
      ),
    );
  }
}
