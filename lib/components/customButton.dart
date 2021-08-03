import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final bool iconVisible;
  final Color backgroundColor;
  final Color textColor;
  CustomButton(
      {required this.icon,
      required this.text,
      required this.iconVisible,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1.3, color: backgroundColor),
        color: backgroundColor,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 2.0,
        ),
        height: 40,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (iconVisible)
              Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  child: icon),
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              // width: 80,
              child: Text(text,
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: textColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
