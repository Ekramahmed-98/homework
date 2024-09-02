import 'package:flutter/material.dart';

class ChickenBurger extends StatefulWidget {
  const ChickenBurger({super.key});

  @override
  State<ChickenBurger> createState() => _ChickenBurgerState();
}

class _ChickenBurgerState extends State<ChickenBurger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/images/Rectangle 1.png',
              height: 300,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_rounded,
                    color: Colors.pink,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.location_on,
                    color: Colors.pink,
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              'Chicken Burger',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.pink,
                ),
              ]),
          const SizedBox(
            width: 4,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                '2000+ Order',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Delicious and tasty cheese burger one of tasty town’s finest, '
            'it has a record sale of 2000 orders and a rating of 4.8 '
            'since it’s introduction. no dull yourself oh!!',
            style: TextStyle(fontSize: 17, color: Colors.grey),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                '\$12',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
