import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';

class Followers extends StatelessWidget {
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
            return ListTile(
              tileColor: colorCodes[index % 3],
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/50544190?v=4"),
              ),
              title: KSubtitle(
                text: "Shreyans Jain",
              ),
              // isThreeLine: true,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: colorCodes[index % 3], width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.follow_the_signs,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  KSubtitle(text: "38 Followers", size: 15),
                  SizedBox(width: 15),
                  Icon(
                    Icons.follow_the_signs,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  KSubtitle(text: "33 Following", size: 15),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 20),
        ));
  }
}
