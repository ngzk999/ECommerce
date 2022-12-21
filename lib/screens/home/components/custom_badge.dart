import 'package:badges/badges.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    Key? key,
    required this.svgSrc,
    this.notificationCount = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int notificationCount;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      radius: 3,
      customBorder: const CircleBorder(),
      child: Badge(
        showBadge: notificationCount != 0,
        position: const BadgePosition(top: -10, end: -5),
        badgeContent: Text(
          notificationCount.toString(),
          style: TextStyle(
            fontSize: getProportionateScreenWidth(12),
            color: Colors.white,
            height: 1,
            fontWeight: FontWeight.w600,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(9)),
          height: getProportionateScreenHeight(48),
          width: getProportionateScreenWidth(48),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(svgSrc),
        ),
      ),
    );
  }
}
