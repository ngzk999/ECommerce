import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class ProductColor extends StatelessWidget {
  const ProductColor(
      {super.key,
      required this.color,
      required this.isSelected,
      required this.press});

  final Color color;
  final bool isSelected;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: press,
        customBorder: const CircleBorder(),
        child: Container(
          margin: const EdgeInsets.only(right: 2),
          padding: const EdgeInsets.all(8),
          height: getProportionateScreenWidth(40),
          width: getProportionateScreenWidth(40),
          decoration: BoxDecoration(
            // color: product.colors[0],
            shape: BoxShape.circle,
            border: Border.all(
                color: isSelected ? kPrimaryColor : Colors.transparent),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
