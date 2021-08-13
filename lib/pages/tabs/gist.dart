import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';
import 'package:github_profile_finder/util/util.dart';
import 'package:google_fonts/google_fonts.dart';

class Gist extends StatelessWidget {
  // const Repository({Key? key}) : super(key: key);
  final List<String> entries = <String>['A', 'B', 'C', 'D'];
  final List<Color> colorCodes = [
    // KLightBlueColor,
    // KLightYellowColor,
    // KLightGreenColor,
    KDarkBlueColor,
    KDarkYellowColor,
    KDarkGreenColor
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1.3,
                  color: colorCodes[index % 3],
                ),
                color: colorCodes[index % 3],
              ),
              // height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KTitle(
                      text: "Eats",
                      size: 20,
                    ),
                    KSubtitle(
                        text: "forked from shortdiv/vuex-modules", size: 12),
                    KSubtitle(
                      text:
                          "A simple node js code to serve static files and folders to your WIFI network via ExpressJs in a json format. Simply add the file/folder you want to share over your wifi to a public folder and view that file over your Wifi network.",
                      size: 15,
                      overflow: true,
                    ),
                    SizedBox(height: 20),
                    Container(
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white60,
                        // border: Border.all(
                        //   width: 1.3,
                        //   color: Colors.white60,
                        // ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(getCode(),
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                            style: GoogleFonts.shareTechMono(
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            )),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.js),
                        SizedBox(width: 10),
                        KSubtitle(text: "Javascript", size: 15),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 20),
        ));
  }
}
