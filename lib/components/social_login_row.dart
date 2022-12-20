import 'package:ecommerce/components/social_card.dart';
import 'package:flutter/material.dart';

class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          icon: "assets/icons/google-icon.svg",
          press: () {},
        ),
        SocialCard(
          icon: "assets/icons/facebook-2.svg",
          press: () {},
        ),
        SocialCard(
          icon: "assets/icons/twitter.svg",
          press: () {},
        ),
      ],
    );
  }
}