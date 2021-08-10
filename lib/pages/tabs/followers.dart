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
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 75,
                    width: 75,
                    child: Image.network(
                        "https://avatars.githubusercontent.com/u/50544190?v=4"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      KSubtitle(text: "Shreyans"),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 15,
                            child: Icon(
                              Icons.follow_the_signs,
                              size: 20,
                            ),
                            backgroundColor: Colors.white54,
                            // maxRadius: ,
                          ),
                          SizedBox(width: 10),
                          KSubtitle(text: "38", size: 15),
                          SizedBox(width: 15),
                          CircleAvatar(
                            maxRadius: 15,
                            child: Icon(
                              Icons.follow_the_signs,
                              size: 20,
                            ),
                            backgroundColor: Colors.white54,
                            // maxRadius: ,
                          ),
                          SizedBox(width: 10),
                          KSubtitle(text: "33", size: 15),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 20),
        ));
  }
}
