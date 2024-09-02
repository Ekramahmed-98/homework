import 'package:flutter/material.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

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
                        child: Image.asset('assets/images/cuate.png')),
                  ),

                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Deliver to your home",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Enjoy a fast and smooth delivery at your doorstep",
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
                  const SizedBox(width: 4),
                  Image.asset('assets/images/Ellipse 1.png'),
                  const SizedBox(width: 4),
                  Image.asset('assets/images/Rectangle 1.png'),



                ],),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[700],
                    padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 120.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('HomeScreen');
                  },
                  child: const Text(
                    'Get started ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
             ]
          ),
        ),
      ),
    );
  }
}
