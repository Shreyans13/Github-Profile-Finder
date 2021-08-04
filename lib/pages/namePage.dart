import 'package:flutter/material.dart';
import 'package:github_profile_finder/components/animatedImage.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:google_fonts/google_fonts.dart';

class NamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          color: KDarkGreenColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AnimatedSwitcher(
                    duration: const Duration(seconds: 1),
                    child: Container(
                      height: 300,
                      child: AnimatedImage(),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(35)),
                    color: Colors.white70,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Search",
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Find your Github Profile and share it with one click",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          fillColor: KDarkGreenColor,
                          border: OutlineInputBorder(),
                          hintText: 'Enter a search term',
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () => {},
                              child: Icon(Icons.play_circle_fill_rounded)),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
