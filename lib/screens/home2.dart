import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select a meal type',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),

        ),
        actions: [
          Row(
            children: [
              Icon(Icons.notifications_none, color: Colors.black),
              Icon(Icons.search),
      ]
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              child: ListView(
                children: [
                  Image.asset('assets/images/img.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




