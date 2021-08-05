import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_profile_finder/pages/search.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';
import 'package:github_profile_finder/util/util.dart';
import 'package:libv_markdown/libv_markdown.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SearchPage()));
          },
          child: const Icon(Icons.search_rounded),
          backgroundColor: KDarkGreenColor,
        ),
        body: SafeArea(
          child: Container(
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
                    "-------------------------------------------------------------"),
                Expanded(
                  child: MarkdownView(
                    markdownViewHTML: getMarkup(),
                    onRenderFinished: (height) {
                      print("Widget Height is : $height");
                    },
                    onPageFinished: (string) {
                      print("Page Loading finished");
                    },
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
