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
        future: getUtility().getApiOBJ().getFollowing(),
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
    return Padding(
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
        future: getUtility().getApiOBJ().getUserfromLoginID(userName),
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

// class FollowingTabDataWidget extends StatelessWidget {
//   const FollowingTabDataWidget({required this.following});
//   final User following;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       // crossAxisAlignment: CrossAxisAlignment.stretch,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
//           width: 75,
//           height: 75,
//           // height: double.maxFinite,
//           child: CircleAvatar(
//             backgroundImage: NetworkImage(following.avatar),
//           ),
//         ),
//         KSubtitle(text: following.login),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: KSubtitle(text: following.bio),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             FaIcon(FontAwesomeIcons.userFriends, size: 15),
//             SizedBox(width: 10),
//             KSubtitle(
//               text: following.followers.toString(),
//               size: 15,
//             ),
//             SizedBox(width: 15),
//             FaIcon(FontAwesomeIcons.users, size: 15),
//             SizedBox(width: 10),
//             KSubtitle(text: following.following.toString(), size: 15),
//           ],
//         ),
//       ],
//     );
//   }
// }

// GridView.count(
//           primary: false,
//           // padding: const EdgeInsets.all(20),
//           crossAxisSpacing: 0,
//           mainAxisSpacing: 0,
//           crossAxisCount: 2,
//           children: <Widget>[
//             Card(
//               color: colorCodes[0],
//               // margin: EdgeInsets.zero,
//               child: Column(
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     height: 75,
//                     width: 75,
//                     child: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           "https://avatars.githubusercontent.com/u/50544190?v=4"),
//                     ),
//                   ),
//                   KSubtitle(text: "Shreyans Jain"),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       FaIcon(FontAwesomeIcons.userFriends, size: 15),
//                       SizedBox(width: 10),
//                       KSubtitle(text: "38", size: 15),
//                       SizedBox(width: 15),
//                       FaIcon(FontAwesomeIcons.users, size: 15),
//                       SizedBox(width: 10),
//                       KSubtitle(text: "33", size: 15),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         )
