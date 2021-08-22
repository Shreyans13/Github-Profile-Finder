import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/models/followers.dart';
import 'package:github_profile_finder/models/user.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';
import 'package:github_profile_finder/util/util.dart';

class Followers extends StatelessWidget {
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
    return FutureBuilder<List<FollowersModel>>(
        future: getApiOBJ().getFollowers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text("Error");
            }
            return FollowersTab(
              colorCodes: colorCodes,
              followers: snapshot.data!,
            );
          } else
            return CircularProgressIndicator();
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
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: 30,
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
              child: FollowersTabDataApi(userName: followers[index].userName),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 20),
        ));
  }
}

class FollowersTabDataApi extends StatelessWidget {
  const FollowersTabDataApi({
    Key? key,
    required this.userName,
  }) : super(key: key);

  final String userName;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
        future: getApiOBJ().getUserfromLoginID(userName),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text("FollowersTabDataApi " + snapshot.error.toString());
            }
            return FollowersTabDataWidget(
              follower: snapshot.data!,
            );
          } else
            return LinearProgressIndicator();
        });
  }
}

class FollowersTabDataWidget extends StatelessWidget {
  const FollowersTabDataWidget({required this.follower});

  final User follower;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(follower.avatar),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KSubtitle(
                text: follower.login,
              ),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.userFriends, size: 15),
                  SizedBox(width: 10),
                  KSubtitle(
                    text: follower.followers.toString() + " Followers",
                    size: 15,
                    overflow: true,
                  ),
                  SizedBox(width: 15),
                  FaIcon(FontAwesomeIcons.users, size: 15),
                  SizedBox(width: 10),
                  KSubtitle(
                    text: follower.following.toString() + " Following",
                    size: 15,
                    overflow: true,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
