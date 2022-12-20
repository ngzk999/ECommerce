import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: SignInButtonBuilder(
        height: getProportionateScreenHeight(20),
        width: getProportionateScreenWidth(20),
        shape: const CircleBorder(),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        text: 'Sign in with Google',
        elevation: 0.0,
        mini: true,
        image: SvgPicture.asset(icon),
        onPressed: press,
        backgroundColor: const Color(0xFFF5F6F9),
      ),
    );
  }
}