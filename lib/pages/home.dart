import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/api/api.dart';
import 'package:github_profile_finder/components/tabView.dart';
import 'package:github_profile_finder/pages/search.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    API().getUsers("Shreyans13");
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SearchPage()));
          },
          child: const FaIcon(FontAwesomeIcons.search, size: 20),
          backgroundColor: KDarkOrangeColor,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KSubtitle(text: "Hey, Shreyans13"),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: KTitle(
                            text: "Binge Watching Documentation",
                            // size: 20,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 75,
                            width: 75,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50544190?v=4"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.streetView),
                        SizedBox(width: 10),
                        KSubtitle(text: "Jamshedpur"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.solidEnvelope),
                        SizedBox(width: 10),
                        KSubtitle(text: "shreyans1313@gmail.com"),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: TabViews()),
            ],
          ),
        ));
  }
}
