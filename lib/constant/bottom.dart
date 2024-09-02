
import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(border: Border.all(color:Colors.red ),
            color: backgroundColor, borderRadius: BorderRadius.circular(32)),
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
