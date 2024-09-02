
import 'package:flutter/material.dart';


class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),
                    Image.asset('assets/images/LOGO.png'),
                    const SizedBox(height: 40),

            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(alignment: Alignment.center,
                      child: Image.asset('assets/images/Vector.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 90),
                  child: Align
                    (alignment :Alignment.centerLeft,
                      child   : Image.asset('assets/images/boba.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90,right: 25),
                  child: Align(alignment: Alignment.centerRight,
                      child: Image.asset('assets/images/sandwich.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 125,left: 40),
                  child: Align(alignment: Alignment.centerLeft,child: Image.asset('assets/images/hotdog.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60,right: 100),
                  child: Align(alignment: Alignment.centerRight,child: Image.asset('assets/images/Ellipse 12.png')),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Your comfort food lies here",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Order your favourite meal and taste greatness",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Ellipse 1.png'),
                const SizedBox(width: 4,),
                Image.asset('assets/images/Rectangle 1.png'),
              ],),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[700],
                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 100.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Onboarding2');
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Define skip action
              },
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
        ),
    );
  }
}
