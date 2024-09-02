import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Row(
        children: [
            Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.arrow_back_ios)),),
        const Text(
        'Select a meal type',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

    ),
    ]),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(child: const Icon(Icons.notifications,size: 28),
                  onTap: () {

                  },),
                InkWell(child: const Icon(Icons.search,size: 28),
                  onTap: () {

                  },),

              ],
            ),
          )
        ],),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 13,),
                  Image.asset('assets/images/main_dish.png', ),
                  const SizedBox(height: 13,),
                  Image.asset('assets/images/FAST FOOD.png', height: 150,),
                  const SizedBox(height: 13,),
                  Image.asset('assets/images/salad.png', height: 150,),
                  const SizedBox(height: 13,),
                  Image.asset('assets/images/fruit.png', height: 150,),

                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}




