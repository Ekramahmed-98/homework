
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/screens/on_boardind1.dart';

class SplashScreen extends StatelessWidget {

   const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/Onboarding1');
      // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const OnBoarding1Screen(),));
    });
    return   Scaffold(
      backgroundColor: Colors.red,

      body: Stack(
        children: [
          SizedBox(
            height: 900,
            width:500 ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/LOGO.png'),

                const SizedBox(height: 30,),

                Text('Tasty Town',
                  style: TextStyle(color :Colors.yellow[300],
                      fontWeight: FontWeight.bold,
                      fontSize: 33),),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(color: Colors.yellow[700],width:500,height: 20,),
              )
          )
        ],
      ),
    );
  }
}
