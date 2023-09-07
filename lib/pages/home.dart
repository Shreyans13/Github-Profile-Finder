// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_profile_finder/components/tabView.dart';
import 'package:github_profile_finder/models/user.dart';
import 'package:github_profile_finder/pages/error.dart';
import 'package:github_profile_finder/pages/search.dart';
import 'package:github_profile_finder/util/customColors.dart';
import 'package:github_profile_finder/util/customText.dart';
import 'package:github_profile_finder/util/util.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SearchPage()));
          },
          child: const FaIcon(FontAwesomeIcons.search, size: 20),
          backgroundColor: KDarkOrangeColor,
        ),
        body: FutureBuilder<User>(
            future: Util.getApiOBJ().getUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return ErrorPage(errorMessage: snapshot.error.toString());
                }

                return HomePage(
                  user: snapshot.data!,
                );
              } else
                return Center(child: CircularProgressIndicator());
            }));
  }
}

class HomePage extends StatelessWidget {
  final User user;

  HomePage({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: user.message != null
          ? ErrorPage(errorMessage: "Profile " + (user.message ?? ""))
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KSubtitle(text: 'Hey, ${user.login}'),
                          user.bio != ""
                              ? Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.65,
                                  child: Wrap(children: [
                                    KTitle(
                                      text: user.bio,
                                      overflow: true,
                                    ),
                                  ]),
                                )
                              : SizedBox(height: 10),
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.streetView, size: 20),
                              SizedBox(width: 10),
                              KSubtitle(text: user.location),
                            ],
                          ),
                          SizedBox(height: user.bio == "" ? 10 : 0),
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
                                    FaIcon(FontAwesomeIcons.userFriends,
                                        size: 15),
                                    SizedBox(width: 10),
                                    KSubtitle(
                                      text: user.followers.toString() +
                                          " Followers",
                                      size: 15,
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
                                      text: user.following.toString() +
                                          " Following",
                                      size: 15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Image.network(user.avatar),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: TabViews()),
              ],
            ),
    );
  }
}
