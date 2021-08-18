import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/models/repository.dart';
import 'package:github_profile_finder/util/consts.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';
import 'package:github_profile_finder/util/util.dart';

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
    return FutureBuilder<List<RepositoryModel>>(
        future: getApiOBJ().getRepository(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text("Error");
            }

            return RepositoryTab(
              colorCodes: colorCodes,
              repo: snapshot.data!,
            );
          } else
            return CircularProgressIndicator();
        });
  }
}

class RepositoryTab extends StatelessWidget {
  const RepositoryTab({
    required this.repo,
    required this.colorCodes,
  });

  final List<Color> colorCodes;
  final List<RepositoryModel> repo;

  Widget getIcon(String icon) {
    // print(icon);
    // languageIcon[icon] == null ? getApiOBJ().checkImageExistOrNot == "":  : languageIcon[icon];

    return Container(
      width: 20,
      child: Image.network(languageIcon[icon].toString(),
          errorBuilder: (context, a, b) => Container(
                width: 20,
                child: Image.network(
                    "https://raw.githubusercontent.com/github/explore/549f36e938c7a2323fee1a465e812c7a69128979/topics/${icon.toLowerCase()}/${icon.toLowerCase()}.png",
                    errorBuilder: (context, a, b) => Text("Image not found")),
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: repo.length,
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
                      text: repo[index].name,
                      size: 20,
                    ),
                    KSubtitle(text: repo[index].desc, size: 15),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.star, size: 20),
                        SizedBox(width: 10),
                        KSubtitle(text: repo[index].stars.toString(), size: 15),
                        SizedBox(width: 15),
                        FaIcon(FontAwesomeIcons.codeBranch, size: 20),
                        SizedBox(width: 10),
                        KSubtitle(text: repo[index].forks.toString(), size: 15),
                        Visibility(
                          visible: repo[index].language != "",
                          child: Row(
                            children: [
                              SizedBox(width: 15),
                              getIcon(repo[index].language),
                              SizedBox(width: 10),
                              KSubtitle(text: repo[index].language, size: 15),
                            ],
                          ),
                        )
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
