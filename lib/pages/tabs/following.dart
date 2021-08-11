import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';

class Following extends StatelessWidget {
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
        child: GridView.count(
          primary: false,
          // padding: const EdgeInsets.all(20),
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: colorCodes[0],
              // margin: EdgeInsets.zero,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/50544190?v=4"),
                    ),
                  ),
                  KSubtitle(text: "Shreyans Jain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: 15,
                        child: Icon(
                          Icons.follow_the_signs,
                          size: 20,
                          color: Colors.black,
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
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.white54,
                        // maxRadius: ,
                      ),
                      SizedBox(width: 10),
                      KSubtitle(text: "33", size: 15),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: colorCodes[1],
              // margin: EdgeInsets.zero,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/50544190?v=4"),
                    ),
                  ),
                  KSubtitle(text: "Shreyans Jain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ),
            Card(
              color: colorCodes[2],
              // margin: EdgeInsets.zero,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/50544190?v=4"),
                    ),
                  ),
                  KSubtitle(text: "Shreyans Jain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ),
            Card(
              color: colorCodes[0],
              // margin: EdgeInsets.zero,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/50544190?v=4"),
                    ),
                  ),
                  KSubtitle(text: "Shreyans Jain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ),
            Card(
              color: colorCodes[1],
              // margin: EdgeInsets.zero,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/50544190?v=4"),
                    ),
                  ),
                  KSubtitle(text: "Shreyans Jain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ),
            Card(
              color: colorCodes[2],
              // margin: EdgeInsets.zero,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/50544190?v=4"),
                    ),
                  ),
                  KSubtitle(text: "Shreyans Jain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ),
            Card(
              color: colorCodes[0],
              // margin: EdgeInsets.zero,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/50544190?v=4"),
                    ),
                  ),
                  KSubtitle(text: "Shreyans Jain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ),
            Card(
              color: colorCodes[1],
              // margin: EdgeInsets.zero,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/50544190?v=4"),
                    ),
                  ),
                  KSubtitle(text: "Shreyans Jain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ),
            Card(
              color: colorCodes[2],
              // margin: EdgeInsets.zero,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/50544190?v=4"),
                    ),
                  ),
                  KSubtitle(text: "Shreyans Jain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ),
          ],
        ));
  }
}
