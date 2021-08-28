import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:github_profile_finder/components/loader.dart';
import 'package:github_profile_finder/components/programmingLanguageIcon.dart';
import 'package:github_profile_finder/models/gist.dart';
import 'package:github_profile_finder/pages/error.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';
import 'package:github_profile_finder/util/util.dart';
import 'package:google_fonts/google_fonts.dart';

class Gist extends StatelessWidget {
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
    return FutureBuilder<List<GistModel>>(
        future: Util.getApiOBJ().getGist(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return ErrorPage(errorMessage: snapshot.error.toString());
            }
            return GistTab(
              colorCodes: colorCodes,
              gist: snapshot.data!,
            );
          } else
            return CircularLoader(
              color: KDarkYellowColor,
            );
        });
  }
}

class GistTab extends StatelessWidget {
  GistTab({
    required this.gist,
    required this.colorCodes,
  });

  final List<Color> colorCodes;
  final List<GistModel> gist;

  @override
  Widget build(BuildContext context) {
    return gist.length == 0
        ? ErrorPage(
            errorMessage: "No Gist created by user",
            btnVisibility: false,
            imgSrc: "./assets/images/illustrations/empty_list.svg",
          )
        : Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: gist.length,
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        KTitle(
                          text: gist[index].name,
                          size: 20,
                        ),
                        KSubtitle(
                          text: gist[index].description,
                          size: 15,
                          // overflow: true,
                        ),
                        SizedBox(height: 20),
                        Container(
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white60,
                            // border: Border.all(
                            //   width: 1.3,
                            //   color: Colors.white60,
                            // ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CodeBlock(
                                url: gist[index].rawUrl,
                                color: colorCodes[index % 3]),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            programmingLanguageIcon(gist[index].language),
                            SizedBox(width: 10),
                            KSubtitle(text: gist[index].language, size: 15),
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

class CodeBlock extends StatelessWidget {
  const CodeBlock({required this.url, required this.color});
  final String url;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<RawData>(
        future: Util.getApiOBJ().getRawData(url),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return ErrorPage(errorMessage: snapshot.error.toString());
            }
            return Text(snapshot.data!.raw,
                maxLines: 2,
                overflow: TextOverflow.fade,
                style: GoogleFonts.shareTechMono(
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                ));
          } else
            return LinearLoader(
              color: color,
            );
        });
  }
}
