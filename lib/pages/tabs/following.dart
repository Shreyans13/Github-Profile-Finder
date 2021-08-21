import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/models/followers.dart';
import 'package:github_profile_finder/models/following.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';
import 'package:github_profile_finder/util/util.dart';

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
    return FutureBuilder<List<FollowingModel>>(
        future: getApiOBJ().getFollowing(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text("Error");
            }

            return FollowingTab(
              colorCodes: colorCodes,
              following: snapshot.data!,
            );
          } else
            return CircularProgressIndicator();
        });
  }
}

class FollowingTab extends StatelessWidget {
  const FollowingTab(
      {Key? key, required this.colorCodes, required this.following})
      : super(key: key);

  final List<Color> colorCodes;
  final List<FollowingModel> following;

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
                      FaIcon(FontAwesomeIcons.userFriends, size: 15),
                      SizedBox(width: 10),
                      KSubtitle(text: "38", size: 15),
                      SizedBox(width: 15),
                      FaIcon(FontAwesomeIcons.users, size: 15),
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
                      FaIcon(FontAwesomeIcons.userFriends, size: 15),
                      SizedBox(width: 10),
                      KSubtitle(text: "38", size: 15),
                      SizedBox(width: 15),
                      FaIcon(FontAwesomeIcons.users, size: 15),
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
                      FaIcon(FontAwesomeIcons.userFriends, size: 15),
                      SizedBox(width: 10),
                      KSubtitle(text: "38", size: 15),
                      SizedBox(width: 15),
                      FaIcon(FontAwesomeIcons.users, size: 15),
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
                      FaIcon(FontAwesomeIcons.userFriends, size: 15),
                      SizedBox(width: 10),
                      KSubtitle(text: "38", size: 15),
                      SizedBox(width: 15),
                      FaIcon(FontAwesomeIcons.users, size: 15),
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
                      FaIcon(FontAwesomeIcons.userFriends, size: 15),
                      SizedBox(width: 10),
                      KSubtitle(text: "38", size: 15),
                      SizedBox(width: 15),
                      FaIcon(FontAwesomeIcons.users, size: 15),
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
                      FaIcon(FontAwesomeIcons.userFriends, size: 15),
                      SizedBox(width: 10),
                      KSubtitle(text: "38", size: 15),
                      SizedBox(width: 15),
                      FaIcon(FontAwesomeIcons.users, size: 15),
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
                      FaIcon(FontAwesomeIcons.userFriends, size: 15),
                      SizedBox(width: 10),
                      KSubtitle(text: "38", size: 15),
                      SizedBox(width: 15),
                      FaIcon(FontAwesomeIcons.users, size: 15),
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
                      FaIcon(FontAwesomeIcons.userFriends, size: 15),
                      SizedBox(width: 10),
                      KSubtitle(text: "38", size: 15),
                      SizedBox(width: 15),
                      FaIcon(FontAwesomeIcons.users, size: 15),
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
                      FaIcon(FontAwesomeIcons.userFriends, size: 15),
                      SizedBox(width: 10),
                      KSubtitle(text: "38", size: 15),
                      SizedBox(width: 15),
                      FaIcon(FontAwesomeIcons.users, size: 15),
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
