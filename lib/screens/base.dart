
import 'package:flutter/material.dart';
import 'package:homework/screens/api_data.dart';
import 'package:homework/screens/chicken%20burger.dart';
import 'package:homework/screens/fovrite_page.dart';
import 'package:homework/screens/home2.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int selectIndex = 0;
  List screen =[
    const Home2(),
    FavouritePage(),
    const ChickenBurger(),
    const Dataapi(),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.heart_broken,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              label: ''),
        ],
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
      ),
    );
  }
}
