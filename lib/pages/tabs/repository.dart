import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';

class Repository extends StatelessWidget {
  // const Repository({Key? key}) : super(key: key);
  final List<String> entries = <String>['A', 'B', 'C', 'D'];
  final List<Color> colorCodes = [
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
                            "A UI/UX frontend application for a Food delivery application based on a real life scenario.",
                        size: 15),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.star, size: 20),
                        SizedBox(width: 10),
                        KSubtitle(text: "4", size: 15),
                        SizedBox(width: 15),
                        FaIcon(FontAwesomeIcons.codeBranch, size: 20),
                        SizedBox(width: 10),
                        KSubtitle(text: "1", size: 15),
                        SizedBox(width: 15),
                        FaIcon(FontAwesomeIcons.vuejs, size: 22),
                        SizedBox(width: 10),
                        KSubtitle(text: "Vue", size: 15),
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

//
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// color: KDarkBlueColor,
// ),
// height: 150,
// width: double.infinity,
// child: KTitle(text: "Shreyans"),
// ),
// SizedBox(height: 20),
