import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomeeScreen extends StatelessWidget {
  const HomeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/LOGO.png',width: 60,  // Replace with your logo image path
                    height: 60.0,
                  ),
                  const SizedBox(height: 100),
                  Image.asset(
                    'assets/images/Restaurant.png',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[700],
                padding: const EdgeInsets.symmetric(vertical: 22.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('SignInScreen');
              },
              child: const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 30.0),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical:3.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                    side:  const BorderSide(
                      color: Colors.red,
                    )
                ),
              ),
              onPressed: () {
                // Handle sign up action
              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [

                    Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.red,
                      ),
                    ),
                  SizedBox(width: 230,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Icon(Icons.arrow_forward, color: Colors.red),

                      ]
                  ),
                ]
                ),
              ),

            ),

            const SizedBox(height: 20.0),
          ],
        ),
      ),
        ),
    );
  }
}