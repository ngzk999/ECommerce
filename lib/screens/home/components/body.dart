import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/home/components/categories.dart';
import 'package:ecommerce/screens/home/components/discount_banner.dart';
import 'package:ecommerce/screens/home/components/home_header.dart';
import 'package:ecommerce/screens/home/components/popular_products.dart';
import 'package:ecommerce/screens/home/components/product_card.dart';
import 'package:ecommerce/screens/home/components/section_title.dart';
import 'package:ecommerce/screens/home/components/special_offer.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const Categories(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const SpecialOffer(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const PopularProducts(),
            SizedBox(height: getProportionateScreenHeight(20)),
          ],
        ),
      ),
    );
  }
}
