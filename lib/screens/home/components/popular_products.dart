import 'package:flutter/material.dart';
import 'package:selline/components/product_card.dart';
import 'package:selline/models/Product.dart';
import 'package:selline/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProductsSection extends StatelessWidget {
  const PopularProductsSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            text: "Produtos Populares",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular) {
                  return ProductCard(product: demoProducts[index]);
                }
                return SizedBox
                    .shrink(); // here by default width and height is 0
              }),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
