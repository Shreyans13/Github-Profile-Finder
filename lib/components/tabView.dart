import 'package:flutter/material.dart';
import 'package:github_profile_finder/pages/tabs/followers.dart';
import 'package:github_profile_finder/pages/tabs/following.dart';
import 'package:github_profile_finder/pages/tabs/gist.dart';
import 'package:github_profile_finder/pages/tabs/repository.dart';

class TabViews extends StatefulWidget {
  const TabViews({Key? key}) : super(key: key);

  @override
  State<TabViews> createState() => _TabViewsState();
}

class _TabViewsState extends State<TabViews> with TickerProviderStateMixin {
  late TabController _tabController;
  List<Widget> _tabs = [
    // Tab(text: "About"),
    Tab(text: "Repository"),
    // Tab(
    //     child: Text(
    //   "Repository",
    //   style: TextStyle(backgroundColor: Colors.red, color: Colors.blue),
    // )),
    // Tab(
    //     child: Container(
    //         padding: EdgeInsets.all(0),
    //         margin: EdgeInsets.all(0),
    //         child: Text(
    //           "Gists",
    //           style: TextStyle(backgroundColor: Colors.red, color: Colors.blue),
    //         ))),
    Tab(text: "Gists"),
    Tab(text: "Followers"),
    Tab(text: "Following"),
    // Tab(text: "Events")
  ];

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          controller: _tabController,
          labelColor: Colors.black,
          tabs: _tabs,
          // unselectedLabelColor: Colors.red,
          overlayColor: MaterialStateProperty.all(Colors.green),
          // automaticIndicatorColorAdjustment: true,
          // indicatorColor: Colors.green,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [Repository(), Gist(), Followers(), Following()],
          ),
        ),
      ],
    );
  }
}
