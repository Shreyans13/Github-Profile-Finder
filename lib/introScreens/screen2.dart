import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: KDarkYellowColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("./assets/images/github.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("GitHub Profile Finder",
                  style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
              Text("Analyse your github profile",
                  style: GoogleFonts.playfairDisplay(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                  )),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 2.0, color: Colors.black),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 2.0,
                  ),
                  child: Text("Click here",
                      style: GoogleFonts.firaSans(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.black,
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
