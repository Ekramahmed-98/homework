import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomeeScreen extends StatelessWidget {
  const HomeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Spacer(),
            Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/LOGO1.png',width: 60,  // Replace with your logo image path
                    height: 60.0,
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/images/Restaurant.png',
                    width: 300,// Replace with your shop image path
                    height: 200.0,
                  ),
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[700],
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                // Handle sign in action
              },
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                    side:  BorderSide(
                      color: Colors.red,
                    )
                ),
              ),
              onPressed: () {
                // Handle sign up action
              },
              child: Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.red[700],
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}