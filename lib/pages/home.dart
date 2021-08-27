import 'package:flutter/cupertino.dart';
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
            future: getUtility().getApiOBJ().getUser(),
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KSubtitle(text: 'Hey, ${user.login}'),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: KTitle(
                        text: user.bio,
                        // size: 20,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 75,
                        width: 75,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(user.avatar),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.streetView, size: 20),
                    SizedBox(width: 10),
                    KSubtitle(text: user.location),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.userFriends, size: 20),
                    SizedBox(width: 10),
                    KSubtitle(text: '${user.followers} Followers', size: 15),
                    SizedBox(width: 15),
                    FaIcon(FontAwesomeIcons.users, size: 20),
                    SizedBox(width: 10),
                    KSubtitle(text: '${user.following} Following', size: 15),
                  ],
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
