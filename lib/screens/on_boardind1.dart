
import 'package:flutter/material.dart';
void main() {
  runApp(OnBoarding1Screen());
}

class OnBoarding1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasty Town',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Onboarding1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red[50], // Light background color
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/LOGO.png'),
                  // SizedBox(height: 20),
                  // Image.asset('assets/images/hotdog.png', height: 50),
                  // SizedBox(height: 20),
                  // Image.asset('assets/images/sandwich.png', height: 50),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Your comfort food lies here",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red[800],
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Order your favourite meal and taste greatness",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[700],
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 100.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // Define action on button press
              },
              child: Text(
                'Continue',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              // Define skip action
            },
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
