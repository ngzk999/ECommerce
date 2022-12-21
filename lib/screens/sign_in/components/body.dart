import 'package:ecommerce/components/social_login_row.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/sign_in/components/sign_form.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'no_account_text.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20.0),
            ),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.005),
                Text(
                  "Welcome Back",
                  style: kHeadingStyle,
                ),
                const Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SocialLoginRow(),
                SizedBox(height: getProportionateScreenHeight(20)),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
