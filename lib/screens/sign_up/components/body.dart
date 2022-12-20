import 'package:ecommerce/components/social_login_row.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
          ),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              const Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              const SocialLoginRow(),
              SizedBox(height: getProportionateScreenHeight(20)),
              const Text(
                "You're required to complete your \nprofile in the next page",
                // "By continuing, you're confirmed that you agree \nwith our Terms and Conditions",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
