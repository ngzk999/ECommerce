import 'package:ecommerce/components/rounded_icon_btn.dart';
import 'package:ecommerce/components/rounded_rating_btn.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/details/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: buildCustomAppBar(context, product),
      body: Body(product: product),
    );
  }

  PreferredSize buildCustomAppBar(BuildContext context, Product product) {
    return PreferredSize(
      preferredSize: Size.fromHeight((AppBar().preferredSize.height)),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(20),
            top: getProportionateScreenWidth(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedIconBtn(
                iconData: Icons.arrow_back,
                press: () => Navigator.pop(context),
              ),
              RoundedRatingBtn(rating: product.rating),
            ],
          ),
        ),
      ),
    );
  }
}
