import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_profile_finder/util/customText.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KSubtitle(text: "Hey, Shreyans13"),
                      SizedBox(height: 10),
                      KTitle(text: "Binge Watching Documentation"),
                      SizedBox(height: 10),
                      KSubtitle(text: "🌚 Jamshedpur"),
                      SizedBox(height: 10),
                      KSubtitle(text: "🌚 shreyans1313@gmail.com")
                    ],
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    height: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/50544190?v=4"),
                    ),
                  ))
            ],
          ),
          Text(
              "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),
        ],
      ),
    )));
  }
}
