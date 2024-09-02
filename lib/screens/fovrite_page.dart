import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  int selectIndex = 0;
  final List<Map<String, String>>Favourite = [
  {"name": "Burger & Fries", "price": "\$30", "image": "assets/images/Ellipse 20 (1).png"},
{"name": "Jollof rice & chicken", "price": "\$30", "image": "assets/images/Ellipse 20 (2).png"},
{"name": "Water melon", "price": "\$30", "image": "assets/images/Ellipse 20 (3).png"},
{"name": "Spaghetti", "price": "\$30", "image": "assets/images/Ellipse 20 (4).png"},
{"name": "Salad", "price": "\$30", "image": "assets/images/Ellipse 20 (5).png"},
{"name": "Salad", "price": "\$30", "image": "assets/images/Ellipse 20 (5).png"}

];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:Scaffold(
        appBar: AppBar(
        title:  Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('ChickenBurger');

                      },
                      icon: const Icon(Icons.arrow_back_ios)),),
                const Text(
                  'Your favourites',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  child: const Icon(Icons.notifications_outlined,size: 30),
                  onTap: () {

                  },),

              ]),
        ),
         ),
    body: Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListView.builder(
      itemCount: Favourite.length,
      itemBuilder: (context, index) {

      return ListTile(

      leading: CircleAvatar(
      backgroundImage: AssetImage(Favourite[index]["image"]!),
      radius: 30,
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 35.0),

        child: Text(
          style: const TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold
          ),
            Favourite[index]["name"]!),
      ),
      subtitle: Text(
        style: const TextStyle(
        fontSize: 15,fontWeight: FontWeight.bold),
          Favourite[index]["price"]!),


      trailing: const Icon(
      Icons.favorite,
      color: Colors.red,
      ),
      );
      },
      ),
    ),
    ),
    );}}