import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: KDarkGreenColor,
      child: Padding(
        padding: EdgeInsets.all(20),
        // width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("SHREYANS JAIN",
                style: GoogleFonts.yanoneKaffeesatz(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                )),
            SizedBox(
              height: 25,
            ),
            Text("Github Profile Finder",
                style: GoogleFonts.lato(
                  fontSize: 36,
                )),
            SizedBox(
              height: 25,
            ),
            Text("Analyse your github profile-------- ",
                style: GoogleFonts.lato(
                  fontSize: 20,
                ))
          ],
        ),
      ),
    );
  }
}
