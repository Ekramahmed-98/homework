
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Image.asset('assets/images/LOGO.png',width: 20, height: 50,),
            SizedBox(
              height: 20,
            ),
             Text('Tasty Town',style: TextStyle(
                  color: Colors.yellow,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
                ),
          ],
        ),
      ),
    );
  }
}
