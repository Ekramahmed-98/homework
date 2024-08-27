import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:homework/screens/home2.dart';
import 'package:homework/screens/launch.dart';
import 'package:homework/screens/on_boardind1.dart';
import 'package:homework/screens/on_boardind2.dart';
import 'package:homework/screens/on_boarding3.dart';
import 'package:homework/screens/sign_in.dart';
import 'package:homework/screens/homee.dart';

void main() async {
// WidgetsFlutterBinding.ensureInitialized();
// WidgetsBinding.instance;
// await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,

      // home:OnBoarding1Screen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        'Onboarding1': (context) =>  OnBoarding1Screen(),
        'Onboarding2': (context) => const OnBoarding2(),
        'Onboarding3': (context) => const OnBoarding3(),
        'HomeScreen': (context) => const HomeeScreen(),
        'Home2': (context) => const Home2(),
        'SignInScreen': (context) => const SignInScreen(),
        // 'HomePage': (context) => const HomePage(),
        // 'Profile': (context) => const Profile(),
        // 'Favourite': (context) => const Favourite(),


      },

    );
  }
}

