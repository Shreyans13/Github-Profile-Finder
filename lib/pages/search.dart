import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/components/animatedImage.dart';
import 'package:github_profile_finder/pages/home.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                          KTitle(text: "Search", size: 25),
                          SizedBox(
                            height: 10,
                          ),
                          KSubtitle(
                              text:
                                  "Find your Github Profile and share it with one click"),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                              decoration: InputDecoration(
                            fillColor: KDarkGreenColor,
                            border: OutlineInputBorder(),
                            hintText: 'Enter Github ID',
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      //     shape: CircleBorder(),
                                      primary: KDarkOrangeColor),
                                  onPressed: () => {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => Home()))
                                      },
                                  child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FaIcon(FontAwesomeIcons.search))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
