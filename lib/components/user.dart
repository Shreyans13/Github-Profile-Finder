import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/models/user.dart';
import 'package:github_profile_finder/util/customText.dart';

class UserTabData extends StatelessWidget {
  const UserTabData({required this.user});

  final User user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0)), //add border radius here
              child: Image.network(user.avatar), //add image location here
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KTitle(
                size: 17,
                text: user.login,
              ),
              user.bio != ""
                  ? Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Wrap(children: [
                        KSubtitle(
                          text: user.bio,
                          // overflow: true,
                        ),
                      ]),
                    )
                  : SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runAlignment: WrapAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FaIcon(FontAwesomeIcons.userFriends, size: 15),
                        SizedBox(width: 10),
                        KSubtitle(
                          text: user.followers.toString() + " Followers",
                          size: 15,
                          // overflow: true,
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FaIcon(FontAwesomeIcons.users, size: 15),
                        SizedBox(width: 10),
                        KSubtitle(
                          text: user.following.toString() + " Following",
                          size: 15,
                          // overflow: true,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
