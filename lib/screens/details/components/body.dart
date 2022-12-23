import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/components/rounded_icon_btn.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/details/components/product_color.dart';
import 'package:ecommerce/screens/details/components/product_description.dart';
import 'package:ecommerce/screens/details/components/product_preview.dart';
import 'package:ecommerce/screens/details/components/top_rounded_container.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductPreview(product: widget.product),
          TopRoundedContainer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: widget.product, press: () {}),
                Container(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      buildProductColorRow(),
                      TopRoundedContainer(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(40),
                          ),
                          child:
                              DefaultButton(text: "Add to Cart", press: () {}),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildProductColorRow() {
    return Container(
      padding: EdgeInsets.only(top: 30),
      decoration: const BoxDecoration(
        color: Color(0xFFF6F7F9),
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            ...List.generate(
              widget.product.colors.length,
              (index) {
                return ProductColor(
                  color: widget.product.colors[index],
                  isSelected: index == selectedColorIndex,
                  press: () {
                    setState(() {
                      selectedColorIndex = index;
                    });
                  },
                );
              },
            ),
            const Spacer(),
            RoundedIconBtn(iconData: Icons.remove, press: () {}),
            SizedBox(width: getProportionateScreenWidth(15)),
            RoundedIconBtn(iconData: Icons.add, press: () {}),
          ],
        ),
      ),
    );
  }
}
