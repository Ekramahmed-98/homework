import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Profile '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/Ellip.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 130),
                  child: Image.asset('assets/images/profile image (1).png'),
                ),
              ],
            ),
            SizedBox(
              height: 350,
              width: 350,
              child: ListView(
                children: const [
                  TextFormField1(
                    text: 'Usrename',
                  ),
                  TextFormField1(
                    text: 'First name',
                  ),
                  TextFormField1(
                    text: 'Last name',
                  ),
                  TextFormField1(
                    text: 'phone',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
                text: 'Complete',
                onTap: () {},
                backgroundColor: Colors.red,
                textColor: Colors.white)
          ],
        ),
      ),
    );
  }
}

class TextFormField1 extends StatelessWidget {
  final String text;

  const TextFormField1({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: text,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Function() onTap;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 75,
        width: 330,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            color: backgroundColor,
            borderRadius: BorderRadius.circular(32)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 6,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
