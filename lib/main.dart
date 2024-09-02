import 'package:flutter/material.dart';
import 'package:homework/screens/base.dart';
import 'package:homework/screens/fovrite_page.dart';
import 'package:homework/screens/home2.dart';
import 'package:homework/screens/launch.dart';
import 'package:homework/screens/on_boardind1.dart';
import 'package:homework/screens/on_boardind2.dart';
import "package:homework/screens/on_boarding3.dart";
import 'package:homework/screens/profile.dart';
import 'package:homework/screens/sign_in.dart';
import 'package:homework/screens/homee.dart';
import 'package:homework/screens/sign_up.dart';

void main() async {
  runApp(
    MaterialApp(
        title: 'Food App',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/Onboarding1': (context) => const Onboarding1(),
          '/Onboarding2': (context) => const OnBoarding2(),
          '/Onboarding3': (context) => const OnBoarding3(),
          'HomeScreen': (context) => const HomeeScreen(),
          'Home2': (context) => const Home2(),
          'SignInScreen': (context) => const SignInScreen(),
          'SignUp': (context) => const SignUp(),
          'Profile': (context) => const Profile(),
          'Favourite': (context) => const FavouritePage(),
          'BaseScreen': (context) => const BaseScreen(),
        }),
  );
}
