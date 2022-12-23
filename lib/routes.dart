import 'package:ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce/screens/details/detail_screen.dart';
import 'package:ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/login_success/login_success_screen.dart';
import 'package:ecommerce/screens/otp/otp_screen.dart';
import 'package:ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName:(context) => const SignInScreen(),
  ForgotPasswordScreen.routeName:(context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName:(context) => const LoginSuccessScreen(),
  SignUpScreen.routeName:(context) => const SignUpScreen(),
  CompleteProfileScreen.routeName:(context) => const CompleteProfileScreen(),
  OtpScreen.routeName:(context) => const OtpScreen(),
  HomeScreen.routeName:(context) => const HomeScreen(),
  DetailScreen.routeName:(context) => const DetailScreen(),
};