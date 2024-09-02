import 'package:flutter/material.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset('assets/images/LOGO.png'),
              SizedBox(height: 20),
              Align(alignment: Alignment.center,
                  child: Image.asset('assets/images/Frame_2.png',height:327 ,width: 342, )),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red[50], // Light background color
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Test fresh delicious meals anytime",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We provide well prepared meal at all hours of the day",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 120.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Onboarding3');
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
        ),
      ),
        ),
    );
  }
}


