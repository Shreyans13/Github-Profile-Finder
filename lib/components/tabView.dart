import 'package:flutter/material.dart';
import 'package:github_profile_finder/pages/tabs/followers.dart';
import 'package:github_profile_finder/pages/tabs/following.dart';
import 'package:github_profile_finder/pages/tabs/gist.dart';
import 'package:github_profile_finder/pages/tabs/repository.dart';
import 'package:github_profile_finder/util/customColors.dart';

class TabViews extends StatefulWidget {
  const TabViews({Key? key}) : super(key: key);

  @override
  State<TabViews> createState() => _TabViewsState();
}

class _TabViewsState extends State<TabViews> with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedTab = 0;
  // int currentTab;
  late List<Widget> _tabs;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
      setState(() {
        selectedTab = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    _tabs = [
      Container(
          color: selectedTab == 0 ? KDarkBlueColor : null,
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.zero,
          child: Tab(text: "Repository")),
      Container(
        color: selectedTab == 1 ? KDarkYellowColor : null,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Tab(text: "Gists"),
      ),
      Container(
        color: selectedTab == 2 ? KDarkGreenColor : null,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Tab(text: "Followers"),
      ),
      Container(
        color: selectedTab == 3 ? KDarkBlueColor : null,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Tab(text: "Following"),
      ),
      // Tab(text: "Events")
    ];
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          controller: _tabController,
          labelColor: Colors.black,
          tabs: _tabs,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.transparent,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
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
