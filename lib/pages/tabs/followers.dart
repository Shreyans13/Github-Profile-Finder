import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
import 'package:github_profile_finder/components/loader.dart';
import 'package:github_profile_finder/components/user.dart';
import 'package:github_profile_finder/models/followers.dart';
import 'package:github_profile_finder/models/user.dart';
import 'package:github_profile_finder/pages/error.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/util.dart';

class Followers extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', 'D'];
  final List<Color> colorCodes = [
    KDarkBlueColor,
    KDarkYellowColor,
    KDarkGreenColor
  ];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FollowersModel>>(
        future: Util.getApiOBJ().getFollowers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return ErrorPage(errorMessage: snapshot.error.toString());
            }
            return FollowersTab(
              colorCodes: colorCodes,
              followers: snapshot.data!,
            );
          } else
            return CircularLoader(
              color: KDarkGreenColor,
            );
        });
  }
}

class FollowersTab extends StatelessWidget {
  const FollowersTab({
    Key? key,
    required this.colorCodes,
    required this.followers,
  }) : super(key: key);

  final List<Color> colorCodes;
  final List<FollowersModel> followers;

  @override
  Widget build(BuildContext context) {
    return followers.length == 0
        ? ErrorPage(
            errorMessage: "No Followers",
            btnVisibility: false,
            imgSrc: "./assets/images/illustrations/empty_list.svg",
          )
        : Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: followers.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colorCodes[index % 3],
                  ),
                  child: FollowersTabDataApi(
                      userName: followers[index].userName,
                      color: colorCodes[index % 3]),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 20),
            ));
  }
}

class FollowersTabDataApi extends StatelessWidget {
  const FollowersTabDataApi(
      {Key? key, required this.userName, required this.color})
      : super(key: key);

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
