import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:github_profile_finder/components/loader.dart';
import 'package:github_profile_finder/components/user.dart';
import 'package:github_profile_finder/models/following.dart';
import 'package:github_profile_finder/models/user.dart';
import 'package:github_profile_finder/pages/error.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/util.dart';

class Following extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', 'D'];
  final List<Color> colorCodes = [
    KDarkBlueColor,
    KDarkYellowColor,
    KDarkGreenColor
  ];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FollowingModel>>(
        future: Util.getApiOBJ().getFollowing(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return ErrorPage(errorMessage: snapshot.error.toString());
            }

            return FollowingTab(
              colorCodes: colorCodes,
              following: snapshot.data!,
            );
          } else
            return CircularLoader(
              color: KDarkBlueColor,
            );
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
    return following.length == 0
        ? ErrorPage(
            errorMessage: "No Following",
            btnVisibility: false,
            imgSrc: "./assets/images/illustrations/empty_list.svg",
          )
        : Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: following.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colorCodes[index % 3],
                  ),
                  child: FollowingTabDataApi(
                      userName: following[index].userName,
                      color: colorCodes[index % 3]),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 20),
            ));
  }
}

class FollowingTabDataApi extends StatelessWidget {
  const FollowingTabDataApi({required this.userName, required this.color});
  final String userName;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
        future: Util.getApiOBJ().getUserfromLoginID(userName),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return ErrorPage(errorMessage: snapshot.error.toString());
            }
            return UserTabData(
              user: snapshot.data!,
            );
          } else
            return LinearLoader(
              color: color,
            );
        });
  }
}
